cask 'backuploupe' do
  version '2.9'
  sha256 '1936d3bebe38942a43a0e0071ab08a0ed62ef84c973b4c0176fa95b59d0e55b5'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => '3e702b3720bc82c5012636beec2b3a2f4ed01cd120cef36652ee97dfd37f38ef'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
