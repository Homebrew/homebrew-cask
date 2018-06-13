cask 'savoir-faire-linux-ring' do
  version '201806121825'
  sha256 'b66236b3bbe9d1153d9be957578705833f67be98afba04a05149d01776dd3e6d'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Ring.app'
end
