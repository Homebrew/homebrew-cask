cask 'screenflow' do
  version '8.2.2'
  sha256 'a183be6fd0bf0c03a8e631833febf7f3491589fec40a773240a4899b8741bb4c'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ScreenFlow.app'
end
