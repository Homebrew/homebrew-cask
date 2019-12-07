cask 'fman' do
  version '1.6.9'
  sha256 '802d78eea8b11c106204403fe47b1211a83e93e5bdde8c7e556bea14b1672862'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
