cask 'appzapper' do
  version '2.0.1'
  sha256 'b7d0bdd05cf246a2f2ab18145b052824860cb74a6ae665fba9d403f6bb79fac4'

  url "http://www.appzapper.com/downloads/AppZapper#{version}.zip"
  appcast 'http://www.appzapper.com/az2appcast.xml',
          :sha256 => 'e405c8598881a8351072efe6dd0596a3fd9bbb604fb4ea63c7b5bfa067a3b303'
  name 'AppZapper'
  homepage 'http://www.appzapper.com/'
  license :commercial

  app 'AppZapper.app'
end
