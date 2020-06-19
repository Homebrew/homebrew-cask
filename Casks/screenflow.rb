cask 'screenflow' do
  version '9.0.4'
  sha256 '6e54638252c59ba707457d1be954e315c155d63d87291bc45054f77d76419d99'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'ScreenFlow.app'
end
