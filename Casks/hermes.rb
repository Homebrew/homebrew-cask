cask 'hermes' do
  version '1.2.7'
  sha256 'e83ca1aa6cdf6ff9dde7ef177859f6e1c4b988075ce6665502267c0f1a1f7085'

  # github.com/HermesApp/Hermes was verified as official when first introduced to the cask
  url "https://github.com/HermesApp/Hermes/releases/download/v#{version}/Hermes-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/HermesApp/HermesApp.github.io/master/versions.xml',
          checkpoint: 'db9ec99a507fb4c28aaf718830be2a2679d895e52a4f8476e7074bcfadc6e270'
  name 'Hermes'
  homepage 'https://hermesapp.org/'
  license :mit

  auto_updates true

  app 'Hermes.app'

  zap delete: [
                '~/Library/Application Support/Hermes',
                '~/Library/Caches/com.alexcrichton.Hermes',
                '~/Library/Preferences/com.alexcrichton.Hermes.plist',
              ]
end
