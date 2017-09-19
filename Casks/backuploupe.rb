cask 'backuploupe' do
  version '2.11'
  sha256 '619a1c23cc3796395eee71c08e9b4a8a2bd715118bf71c10f5a766be3cfe7530'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: 'f3e77b07c93b1c88d3f13ae85c2ddb71056d1e0909ee05acbc085394fac36583'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
