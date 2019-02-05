cask 'poedit' do
  version '2.2.1'
  sha256 'b225bcbee2c7272dbdc6e1a595869fdf250aa3342dd64b4ca0da2e4807917e63'

  url "https://download.poedit.net/Poedit-#{version}.zip"
  appcast 'https://poedit.net/updates/osx/appcast'

  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
