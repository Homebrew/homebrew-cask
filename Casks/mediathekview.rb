cask 'mediathekview' do
  version '13.1.0'
  sha256 '6396e3279ef5306f735b0a09890e610012bbe97a946a8de7ed0ebdd6949a7b44'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
