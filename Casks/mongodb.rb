cask :v1 => 'mongodb' do
  version '3.0.6-build.1'
  sha256 '7e3276367a63419a5d3a7b062019e8b22d596bc3311313e56bda8ffbcae51445'

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
