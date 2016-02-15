cask 'backuploupe' do
  version '2.9.1'
  sha256 '0df394708160f490626cae8271aae5490475a15bd085d0a9424a29c7a43d6811'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '720ab58efc80f9019df0b05ea71c00edabd139858aa5a73587bbdb7f68e188c5'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
