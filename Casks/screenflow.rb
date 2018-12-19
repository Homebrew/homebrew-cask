cask 'screenflow' do
  version '8.1'
  sha256 '3b5ac3e0867f09f25f37d3dfcbf614c1e1577c2238acffc8834e4d153fa093d4'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ScreenFlow.app'
end
