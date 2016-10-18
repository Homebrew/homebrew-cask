cask 'hermes' do
  version '1.3.0'
  sha256 '661544619346c83c586890a93e6b68af6e86e09b8605acc92d53921c2c160911'

  # github.com/HermesApp/Hermes was verified as official when first introduced to the cask
  url "https://github.com/HermesApp/Hermes/releases/download/v#{version}/Hermes-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/HermesApp/HermesApp.github.io/master/versions.xml',
          checkpoint: 'b50dd357b9bc29039a83b1eba22065a300ee1a3d3bcb17933507ce1a2086dfd9'
  name 'Hermes'
  homepage 'http://hermesapp.org/'

  auto_updates true

  app 'Hermes.app'

  zap delete: [
                '~/Library/Application Support/Hermes',
                '~/Library/Caches/com.alexcrichton.Hermes',
                '~/Library/Preferences/com.alexcrichton.Hermes.plist',
              ]
end
