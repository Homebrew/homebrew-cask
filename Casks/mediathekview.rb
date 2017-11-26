cask 'mediathekview' do
  version '13.0.4'
  sha256 'af44bb42a55480b08403da32d163f7a8c98cf11d380e8cbb341bd837fe387fcb'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml',
          checkpoint: '0c9211365bfac95e5f8377a6dd3d9f2bc55212cddf0a15d5567ce7c082c4d47e'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  app 'MediathekView.app'
end
