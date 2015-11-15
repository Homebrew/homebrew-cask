cask :v1 => 'screenflow' do
  version '5.0.3'
  sha256 '5f729b09b04c29e20af3048aaccd8e60ad0527c4e6e5f0cdb07e82d73da3af88'

  url "http://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'http://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'http://www.telestream.net/screenflow/'
  license :commercial

  app 'ScreenFlow.app'

  depends_on :macos => '>= :mavericks'
end
