cask :v1 => 'backuploupe' do
  version '2.8.3'
  sha256 '81dbb5772be6d2a12a3e48f50d342065a80771d81bcdf8aa093445f8dcc5e0f2'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  name 'BackupLoupe'
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => 'b46b33ac9d0434a4a7186fca3793744ff29d7f75436e0df44e5f601230d59ac2'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
