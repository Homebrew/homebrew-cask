cask 'screenflow' do
  version '7.2'
  sha256 'c0853d43083550deb1f2fc243f962d266d8eb008edc79c46ae25112bce6465fe'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: 'de6bd51ea9ae567b4560e8f23c9190733d64196d20566fca64abe83ac5ba46ec'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
