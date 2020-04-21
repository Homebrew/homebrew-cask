cask 'screenflow' do
  version '9.0.3'
  sha256 '7e8b5e4b508df0266d650e615d58eb75c1f36f9e10742ed68a87af0d70c68e78'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'ScreenFlow.app'
end
