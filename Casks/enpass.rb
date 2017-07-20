cask 'enpass' do
  version '5.5.8'
  sha256 'f7a75036f95f4ba535ccff9c9f1be93250222c5c880e9d0d2aa19bfe749f4588'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'

  zap delete: [
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop',
                '~/Library/Caches/in.sinew.Enpass-Desktop',
                '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
                '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState',
              ]
end
