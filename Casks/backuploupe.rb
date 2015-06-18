cask :v1 => 'backuploupe' do
  version '2.7.1'
  sha256 '679e963366c664d4dfdcdbe3f479b7a4025365c9ea77553d579adf064d1332dd'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  name 'BackupLoupe'
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => '9fa7569bbaa9ade5233ba80bfcc089afc1f4dce2fb00e502a001eacf72cb9468'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
