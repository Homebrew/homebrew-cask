cask 'geph' do
  version '3.3.0'
  sha256 '724cd4eda0dc3c656afc44fb08359658c72cfa0173b834ea0cc8cad6dbcd7ce6'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
