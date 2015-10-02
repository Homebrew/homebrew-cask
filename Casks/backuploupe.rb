cask :v1 => 'backuploupe' do
  version '2.8.2'
  sha256 '3bd9412e5f7e0e10846a141b0ad32ce3b7de0bfb7d637560f8aa728dec9c1cc5'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  name 'BackupLoupe'
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => '8bbbea597c07c2d81fecc48302ebfd54c4e0732b8e31db17b2d8b05a14afbe98'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
