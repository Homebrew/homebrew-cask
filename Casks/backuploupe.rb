cask 'backuploupe' do
  version '2.13'
  sha256 '8e331325883aaaa6ef3e654d1406ee1ce24a29eec5af1f3e43c7ba9cd655637c'

  url "http://www.soma-zone.com/download/files/BackupLoupe_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/BackupLoupe/a/appcast.xml',
          checkpoint: 'b2f78994e7e5fdc81a7bd9bd2dc446e72a5d8befcf1abd3ae0478bac33bf2e21'
  name 'BackupLoupe'
  homepage 'http://www.soma-zone.com/BackupLoupe/'

  app 'BackupLoupe.app'
end
