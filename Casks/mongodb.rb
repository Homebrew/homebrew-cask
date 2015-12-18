cask 'mongodb' do
  version '3.2.0-build.1449793677'
  sha256 '43fa50505f757e8f7d6e7134b456d0633ece563831b49e9962489ac2f88059d1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom'
  name 'MongoDB'
  homepage 'http://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'

  zap :delete => [
                  '~/Library/Caches/io.blimp.MongoDB',
                  '~/Library/Preferences/io.blimp.MongoDB.plist'
                 ]
end
