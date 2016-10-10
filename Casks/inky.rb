cask 'inky' do
  version '3.0.7_38'
  sha256 '04ce74b7c30cd55f22b1a83ce7952605371c6b1a0d197bf328c8a70ef897358e'

  url "https://download.inky.com/InkyInstall_osx_#{version}.dmg"
  name 'Inky'
  homepage 'http://inky.com'

  app 'Inky.app'

  zap delete: [
                '~/Library/Application Support/Arcode',
                '~/Library/Caches/com.arcode.inky',
              ]
end
