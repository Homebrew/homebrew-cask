cask 'deezer' do
  version '1.1.3_4211'
  sha256 '2ac3bc4c631773b2de9214eff5fc0a0b67362d08d4fc1237e673e67aa9aa388e'

  url "http://e-cdn-content.deezer.com/builds/mac/Deezer_#{version.sub(%r{.*_}, '')}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'
  license :gratis

  app 'Deezer.app'

  zap delete: [
                '~/Library/Application Support/Deezer',
                '~/Library/Preferences/com.deezer.Deezer.plist',
              ]
end
