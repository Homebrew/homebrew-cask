cask 'screenflow' do
  version '8.2.3'
  sha256 '8d3db51b4c2b9ba1dfc962eea853811a0e0ec00ec8782ad499e0a3010d158c00'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ScreenFlow.app'
end
