cask 'hermes' do
  version '1.2.8'
  sha256 '62cf30dd4f02a0e2f3d29d63b4051963724140c4f098e527ee465277d9a7a275'

  # github.com/HermesApp/Hermes was verified as official when first introduced to the cask
  url "https://github.com/HermesApp/Hermes/releases/download/v#{version}/Hermes-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/HermesApp/HermesApp.github.io/master/versions.xml',
          checkpoint: 'f02de008d4f279cd956d828a0b36386af81947a2b6cba42f5a79915c978318ab'
  name 'Hermes'
  homepage 'http://hermesapp.org/'
  license :mit

  auto_updates true

  app 'Hermes.app'

  zap delete: [
                '~/Library/Application Support/Hermes',
                '~/Library/Caches/com.alexcrichton.Hermes',
                '~/Library/Preferences/com.alexcrichton.Hermes.plist',
              ]
end
