cask 'backuploupe' do
  version '2.16.2'
  sha256 'c4bd353abcb992225ae0ae4db6f677dade15439e81c9260818bce81b36e72df1'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
