#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r9q device
$(call inherit-product, device/samsung/r9q/device.mk)

PRODUCT_DEVICE := r9q
PRODUCT_NAME := omni_r9q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G990B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r9qxxx-user 11 RP1A.200720.012 G990BXXS9GXF3 release-keys"

BUILD_FINGERPRINT := samsung/r9qxxx/r9q:11/RP1A.200720.012/G990BXXS9GXF3:user/release-keys
