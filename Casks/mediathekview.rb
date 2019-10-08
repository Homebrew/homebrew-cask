cask 'mediathekview' do
  version '13.5.0'
  sha256 'efaccc25cd5bc9cefb3249868bed22d46de2309d1ae46d834face79b6950e02f'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-mac.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  suite 'MediathekView'
end
