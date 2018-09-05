cask 'mediathekview' do
  version '13.2.0'
  sha256 '0f2eea2cd6ae188c16ecebe220e372cb27ed2e1e5307c447e9f1d1b060296155'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
