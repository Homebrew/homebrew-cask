cask :v1 => 'screenflow' do
  version '5.0.1'
  sha256 'd608763201157e0a92daf404f9d507dfe5f838bcf03b9e6d6eada6c8a60769c7'

  url "http://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  appcast 'http://www.telestream.net/updater/screenflow/appcast.xml'
  homepage 'http://www.telestream.net/screenflow/'
  license :commercial

  app 'ScreenFlow.app'

  depends_on :macos => '>= :mavericks'
end
