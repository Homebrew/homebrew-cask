cask 'lima' do
  version '1.4.3'
  sha256 '64a9950e77a735b43010ac451eb4dd96284c7e142de2492526baca2408c8b822'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
