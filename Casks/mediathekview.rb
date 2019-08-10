cask 'mediathekview' do
  version '13.3.0-mac'
  sha256 '805dd68de99f018b2549984c379535419fed43a7281dd38699ed6b2947fbdacb'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
