cask 'lyn' do
  version '1.8.9'
  sha256 '9430b544fce4f28e8caa125be6e84bc22b447119f1af3353e7693c4c0c1e40fd'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '8640d8d8c0fc3b905b6f0a8acd7c3c5b87244a766e427b5ffac3ade4f1ec04bd'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap delete: [
                '~/Library/Application Support/Lyn',
                '~/Library/Caches/com.lynapp.lyn',
                '~/Library/Preferences/com.lynapp.lyn.plist',
              ]
end
