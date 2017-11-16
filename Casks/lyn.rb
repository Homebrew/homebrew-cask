cask 'lyn' do
  version '1.9.3'
  sha256 'fbe0f125ce11c4024b65f7883487d6f0232786afeba7db2ff74106c2ebf7d346'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '219d8556ab86df8d95dc4c061b66ef3101cbae8e88b4dedbddfc09f8cc310a28'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap delete: [
                '~/Library/Application Support/Lyn',
                '~/Library/Caches/com.lynapp.lyn',
                '~/Library/Preferences/com.lynapp.lyn.plist',
              ]
end
