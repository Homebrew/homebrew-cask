cask :v1 => 'mongodbapp' do
  version '3.0.2-build-4'
  sha256 'c0941911a8dead6b833b19913c4cf17e08d0a33b77eb987c72edc04757a6310f'

  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://io-blimp-mongodbapp.s3.amazonaws.com/MongoDBAppcast.xml'
  name 'MongoDB'
  homepage 'https://github.com/gcollazo/mongodbapp'
  license :mit

  app 'MongoDB.app'

  zap :delete => [
                  '~/Library/Caches/io.blimp.MongoDB',
                  '~/Library/Preferences/io.blimp.MongoDB.plist'
                 ]
end
