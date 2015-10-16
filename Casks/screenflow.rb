cask :v1 => 'screenflow' do
  version '5.0.2'
  sha256 '2e020e6540af3c5f6e33302917345eb1aa8b9fa62995dfc9692515a966527f02'

  url "http://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'http://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'http://www.telestream.net/screenflow/'
  license :commercial

  app 'ScreenFlow.app'

  depends_on :macos => '>= :mavericks'
end
