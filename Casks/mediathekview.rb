cask 'mediathekview' do
  version '13.0.2'
  sha256 '786e56aa55e95d2627804c307a09352f9f451901e1993648260c428947ec3c46'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml',
          checkpoint: '4077f46d7a09c653fc5d508086b6b422539244c72f885ab8578b6c07ea362b33'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
