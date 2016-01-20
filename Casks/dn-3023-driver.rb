cask 'dn-3023-driver' do
  version '20140926'
  sha256 'baa5d20f17cd322b2c53e0bd82c444d1648eefabd5ec383d15f9a16f99810b10'

  url "http://ftp.assmann.com/pub/DN-/DN-3023___4016032318385/DN-3023_driver_driver%20Mac10.6-10.10_#{version}.zip"
  name 'USB driver for Gigabit Ethernet Adapter D-3023'
  homepage 'http://www.digitus.info/en/products/network/gigabit-ethernet-network/network-interface-cards/r-gigabit-ethernet-usb-30-adapter-dn-3023/'
  license :gratis

  container type:   :zip,
            nested: 'DN-3023_Driver_MAC/AX88179_178A.dmg'

  pkg 'AX88179_178A_v2.2.0.pkg'

  uninstall script: 'AX88179_178A_Uninstall_v140'
end
