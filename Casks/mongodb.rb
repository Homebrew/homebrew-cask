cask 'mongodb' do
  version '3.2.5-build.1'
  sha256 '4b81fe65510f39aa244191ae5df3d083040d84b319de9a13d51eff67ce2a6488'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom',
          checkpoint: '6c6512a4e0cbd16c4e25553a2d06eb5467cf087f59746fb111dd214a73768e7a'
  name 'MongoDB'
  homepage 'https://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap delete: [
                '~/Library/Caches/io.blimp.MongoDB',
                '~/Library/Preferences/io.blimp.MongoDB.plist',
              ]
end
