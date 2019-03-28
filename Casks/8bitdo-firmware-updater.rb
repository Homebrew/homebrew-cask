cask '8bitdo-firmware-updater' do
  version '1.0.8'
  sha256 '8197a581caf9e30776c7404967ab63e26d662af69efffb78f124812a3d80b085'

  url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/8BitDoFirmwareUpdaterV#{version}.zip"
  appcast 'http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml'
  name '8BitDo Firmware Updater'
  homepage 'http://8bitdo.com/'

  app '8BitDo Firmware Updater.app'
end
