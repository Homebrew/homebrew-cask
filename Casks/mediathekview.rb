cask 'mediathekview' do
  version '13.0.3'
  sha256 'f2193484a0dfe74dddd1dbf4906d3bf4f15603243857fc8d9a2bf2cc81a53ea6'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml',
          checkpoint: '4077f46d7a09c653fc5d508086b6b422539244c72f885ab8578b6c07ea362b33'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
