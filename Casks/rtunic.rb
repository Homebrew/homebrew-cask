cask 'rtunic' do
  version '1.0.11'
  sha256 'ece924b9e3cabbcf3170529e559af087377ef27fc4106054656e5d6bc3f1a96f'

  url "https://d2c6jjk3vnoatm.cloudfront.net/spree/products/accessoies/159/DA017E769E0E164_macos0006-RTUNICv#{version}.zip"
  name 'rtunic'
  homepage 'https://www.anker.com/products/taxons/114/Connectivity'
  license :gratis

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
