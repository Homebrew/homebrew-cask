cask 'screenflow' do
  version '6.2.2'
  sha256 '93d82f6e52db68b41c899e3221e08620df8c2bee8b82ffd07f384a8c1deaea96'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: 'd4f5505fab9e422c897ee659aff793d023130c7de5e004d2ca9746668f6c0e8c'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
