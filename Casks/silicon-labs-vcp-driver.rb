cask 'silicon-labs-vcp-driver' do
  version :latest
  sha256 :no_check

  url 'https://www.silabs.com/Support%20Documents/Software/Mac_OSX_VCP_Driver.zip'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'https://www.silabs.com/products/mcu/pages/usbtouartbridgevcpdrivers.aspx'
  license :gratis

  container nested: 'SiLabsUSBDriverDisk.dmg'

  pkg 'Silicon Labs VCP Driver.pkg'

  uninstall pkgutil: 'com.silabs.siliconLabsVcpDriver.*'
end
