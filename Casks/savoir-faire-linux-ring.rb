cask 'savoir-faire-linux-ring' do
  version '201810011851'
  sha256 '1252d701bb93fdd5850ca82ce0df2c3c11bb1c3ae7a67af723002dc2dd3ba186'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
