cask 'mediathekview' do
  version '13.0.2'
  sha256 '03530a1ad13ecb0f88b2929ae75e356741d52f80fa09aecfbb037cc4d71d4571'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml',
          checkpoint: 'e111fd5b5f3b18ee849d7082737820ffc3b745b3742d9b97c835011f7b4ae562'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
