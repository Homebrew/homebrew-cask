cask 'hand-mirror' do
  version '1.1'
  sha256 'f9fcc787e09efb8b9a085331dcc6559548bcdb09e29082c0299e42d8221bf585'

  url "https://handmirror.app/Hand%20Mirror%20#{version}.dmg"
  appcast 'https://handmirror.app'
  name 'Hand Mirror'
  homepage 'https://handmirror.app/'

  app 'Hand Mirror.app'
end
