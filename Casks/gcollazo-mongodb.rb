cask :v1 => 'gcollazo-mongodb' do
  version '1.2.0'
  sha256 '6ad02eb126d2e78d8147b092b160e2cba99bd67cf0c95b6246ec23958e94dfc7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  homepage 'http://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'
end
