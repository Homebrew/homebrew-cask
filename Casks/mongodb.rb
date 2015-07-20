cask :v1 => 'mongodb' do
  version '3.0.3-build.2'
  sha256 '9cfb8abb6d9210e1b42f9f8ed132e171884ca208b8b7cb5a58c9f8b2ff1da431'

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
