cask 'backuploupe' do
  version '2.9'
  sha256 '1936d3bebe38942a43a0e0071ab08a0ed62ef84c973b4c0176fa95b59d0e55b5'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: 'c509a27aac8e4a1aa1512cc8a4ba17a035086fca467db31a2fd824dd817a3691'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
