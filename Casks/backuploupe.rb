cask 'backuploupe' do
  version '2.16.1'
  sha256 '19f88ba4d8dad0c271a5249bb4f96743a96069e1a643548bd755bf0ad3ed9d8a'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
