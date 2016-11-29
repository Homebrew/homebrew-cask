cask 'rtunic' do
  version '1.0.15'
  sha256 '223fb9debbef27924927b0a15056411dd942818c2c0db6c1fb7159b9f25d4f84'

  # d2c6jjk3vnoatm.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2c6jjk3vnoatm.cloudfront.net/spree/products/accessoies/484/0008-RTUNICv#{version}.zip"
  name 'rtunic'
  homepage 'https://www.anker.com/products/taxons/114/Connectivity'

  pkg "RTUNICv#{version}/RTUNICv#{version}.pkg"

  uninstall pkgutil: [
                       'com.realtek.usbeth109',
                       'com.realtek.usbethcomposite109',
                     ],
            kext:    [
                       'com.realtek.driver.AppleRTL815XComposite',
                       'com.realtek.driver.AppleRTL815XEthernet',
                     ]

  caveats do
    reboot
  end
end
