cask 'synology-drive-client' do
  version '2.0.2-11078'
  sha256 '196865f411631103958d71e3dc0c640909e53ef5e3cb44013a22d66ae4f1ec85'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-client-11078.dmg"
  appcast 'https://archive.synology.com/download/Tools/SynologyDriveClient/'
  name 'Synology Drive Client'
  homepage 'https://www.synology.com/en-us/dsm/packages/SynologyDriveClient'

  app 'Synology Drive Client.app'
end
