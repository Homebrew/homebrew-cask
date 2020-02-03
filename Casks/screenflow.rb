cask 'screenflow' do
  version '9.0.2'
  sha256 '39940d4a7d4ac9ca5f20046c8bd731ae9344f86321a70e2fb97b8d125a255fb6'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'ScreenFlow.app'
end
