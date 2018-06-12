cask 'screenflow' do
  version '7.3'
  sha256 'e3fb0521f45c6eda9b7c708674c4193c1997949d85da00533aa2a2aeb646186b'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
