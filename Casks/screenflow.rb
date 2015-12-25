cask 'screenflow' do
  version '5.0.3'
  sha256 '5f729b09b04c29e20af3048aaccd8e60ad0527c4e6e5f0cdb07e82d73da3af88'

  url "http://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'http://www.telestream.net/updater/screenflow/appcast.xml',
          :sha256 => '349eb93b3e0822e316cfa1d29f151ac14de555a6cdbfa962c8d6b774be44f037'
  name 'ScreenFlow'
  homepage 'http://www.telestream.net/screenflow/'
  license :commercial

  app 'ScreenFlow.app'

  depends_on :macos => '>= :mavericks'
end
