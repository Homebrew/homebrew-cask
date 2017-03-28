cask 'hermes' do
  version '1.3.1'
  sha256 'f7c2949e4a44a9183eb6c937b250052867a0373f9de7a8ecbd63853d7df88dbd'

  # github.com/HermesApp/Hermes was verified as official when first introduced to the cask
  url "https://github.com/HermesApp/Hermes/releases/download/v#{version}/Hermes-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/HermesApp/HermesApp.github.io/master/versions.xml',
          checkpoint: '11e95c0584ac859fff5dd0782a85c46b38afa1c50076d3d8fd5c6f351cf1959f'
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
