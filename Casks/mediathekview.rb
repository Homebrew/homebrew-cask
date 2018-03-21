cask 'mediathekview' do
  version '13.0.6'
  sha256 'a53a62a40e94064a9d66adce7b0139f908b8d4d5bc5a8e9d590a07040694a32e'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml',
          checkpoint: '0de169102203a6eabee85ee23511411b38cdddc5b8c4fb89d9c1a643f616c190'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
