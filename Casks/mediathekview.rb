cask 'mediathekview' do
  version '13.1.1'
  sha256 '5266e92735d262faaf1705c2c8339936edfc1cd830291928257eb4dd70742e57'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
