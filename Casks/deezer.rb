cask 'deezer' do
  version '1.1.3,4311'
  sha256 '7df7eb682894898b6175cbcf4997191c66d245bf8f4fa9de4fec911b83eb5273'

  url "http://e-cdn-content.deezer.com/builds/mac/Deezer_#{version.after_comma}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap delete: [
                '~/Library/Application Support/Deezer',
                '~/Library/Preferences/com.deezer.Deezer.plist',
              ]
end
