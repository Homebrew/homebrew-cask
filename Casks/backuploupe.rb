cask 'backuploupe' do
  version '2.10'
  sha256 '17c72fb27c93fe36a4ba5d46dcea5e4bf78c326541867fb926eed0f7feacc17e'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: '0f0123717142216f86264df1275a2f67787158b0caf59da37f034b234f54a5be'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
