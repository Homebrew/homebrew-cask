cask 'freeplane' do
  version '1.5.20'
  sha256 '441fd9ec1bc825483bbd89ec27718f67961a6339b1f13ea1069ad4e1b87217cf'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: '15df09a5aa35c9653383bc995a5cbe94ff62a8377e2da76b30b8d01698d47759'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
