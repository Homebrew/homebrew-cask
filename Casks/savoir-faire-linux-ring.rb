cask 'savoir-faire-linux-ring' do
  version '201807181239'
  sha256 'f4a37cad2ea10af1d5387d2cf7330f470add95eb43394597889616e0f65456c2'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
