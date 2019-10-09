cask 'screenflow' do
  version '8.2.4'
  sha256 '81f10b342e7f894802bc8af5e260dbfd690706f129cacf916f2914af081e7719'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ScreenFlow.app'
end
