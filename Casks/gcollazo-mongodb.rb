cask :v1 => 'gcollazo-mongodb' do
  version '3.0.0'
  sha256 'bd42852055e0c16facf66b5a22bfa8cd4e6f7f1b7fedd708a56dd9463a856e7f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/gcollazo/mongodbapp/releases/download/#{version}/MongoDB.zip"
  appcast 'https://github.com/gcollazo/mongodbapp/releases.atom'
  homepage 'http://elweb.co/mongodb-app/'
  license :mit

  app 'MongoDB.app'
end
