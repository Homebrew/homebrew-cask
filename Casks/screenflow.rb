cask 'screenflow' do
  version '7.3.1'
  sha256 '38055bf786a4096015c4013dc39b05a563003d843be2d55564a285d790cf6d04'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
