cask 'enpass' do
  version '5.6.0'
  sha256 '784d75e8ba691d7762f5d957feb1cccc54029ff3aff4e9e82213700f5225cbbb'

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
