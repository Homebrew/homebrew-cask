cask 'backuploupe' do
  version '2.14.5'
  sha256 '34d5cef368fa5d931a6510bd579bbd1be47f0fd1c2a735d76c59625a4e4cfcac'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
