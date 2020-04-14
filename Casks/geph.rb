cask 'geph' do
  version '3.6.0'
  sha256 '2490f4a82ca7233b9f43a238338dd94a86c7a22a91b1bddb8aaac629fc71d57d'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
