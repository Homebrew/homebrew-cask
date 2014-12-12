cask :v1 => 'silicon-usb-serial-driver' do
  version '3.1'
  sha256 '1b60a3cfdaf00236e438276877f535351f9b7edda244e388f6e1045edd61aed8'

  url 'http://www.silabs.com/Support%20Documents/Software/Mac_OSX_VCP_Driver.zip'
  name 'Silicon Labs VCP Driver'
  name 'CP210x USB to UART Bridge VCP Driver'
  homepage 'http://www.silabs.com/products/mcu/pages/usbtouartbridgevcpdrivers.aspx'
  license :unknown

  container :nested => 'SiLabsUSBDriverDisk.dmg'
  pkg 'Silicon Labs VCP Driver Installer.mpkg'
  uninstall :pkgutil => 'com.silabs.siliconLabsVcpDriver.*pkg'
end
