cask 'mediathekview' do
  version '13.1.3'
  sha256 '7188186fd331c7cb210c7b8a1fd3b2405772a9021a89cc18730b68665cf5c2b7'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
