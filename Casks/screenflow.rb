cask 'screenflow' do
  version '9.0.4'
  sha256 '8bd025c385f58b1c1675a4095fa7dd6d30d2bb500803c2d206320a9eada82eaf'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'ScreenFlow.app'
end
