cask 'mediathekview' do
  version '13.5.0'
  sha256 'ac634ab0383270e61ed1fe91905c0f5c8dfa8a15408d1471ed1b2669974d07bd'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-mac.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  suite 'MediathekView'
end
