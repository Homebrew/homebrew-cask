cask 'mediathekview' do
  version '13.2.1'
  sha256 'a32240691662b1e56c5a4e1adf3c67e48352f66c25321acf3980b9fbd6b8f80a'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
