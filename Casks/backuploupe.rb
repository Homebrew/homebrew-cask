cask 'backuploupe' do
  version '2.13.5'
  sha256 'c3b65d30042944f50d8cac7bf603d1f4b2141120f628ba174ae04e3e01278782'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: 'f2a2ce4ddccd0bf45f9ca335467073a36343decbdff7c01668bbf12453bd286b'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
