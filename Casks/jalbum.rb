cask 'jalbum' do
  version '16'
  sha256 'e80705ec8f431c253af96b07b090311d10d9fee2f55b3e0d9d6c53b2f1e29e5b'

  url "http://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  name 'jAlbum'
  homepage 'http://jalbum.net/'

  app 'jAlbum.app'
end
