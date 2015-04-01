cask :v1 => 'backuploupe' do
  version '2.6.1'
  sha256 '9a06a8487039437dceb409b5e89f77e8e2bdf3d8a309222b6e7183d6ccbaf54a'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  name 'BackupLoupe'
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          :sha256 => '9fa7569bbaa9ade5233ba80bfcc089afc1f4dce2fb00e502a001eacf72cb9468'
  homepage 'http://www.soma-zone.com/BackupLoupe/'
  license :commercial

  app 'BackupLoupe.app'
end
