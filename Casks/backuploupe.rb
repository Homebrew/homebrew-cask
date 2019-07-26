cask 'backuploupe' do
  version '2.15'
  sha256 'c5ee73b68a3f002119fbcac5246c7d69c3f4bcb67f08fb299818ec18a219ec71'

  url "https://www.soma-zone.com/download/files/BackupLoupe-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/BackupLoupe/a/appcast.xml'
  name 'BackupLoupe'
  homepage 'https://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
