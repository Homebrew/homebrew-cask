cask 'backuploupe' do
  version '2.9'
  sha256 '1936d3bebe38942a43a0e0071ab08a0ed62ef84c973b4c0176fa95b59d0e55b5'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => '3accfb2de8f6768a4c15ea4119cd6d5e4cb7387a0ba7bee70b5889b9d8eb5dda'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
