cask 'geph' do
  version '3.4.6'
  sha256 '2626e8640c9b69a178f5561f2fcefe29029a8421127349b96b8bf31a6f644d02'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
