cask 'mediathekview' do
  version '13.0.5'
  sha256 '875ab54894c9914f55223601a21b09fbe382fe5d167ec3c29af4b33350641dd6'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml',
          checkpoint: '177c91c1d3c1609701800155b0076aa068eb65e229c69480bb4f306c01ae57db'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
