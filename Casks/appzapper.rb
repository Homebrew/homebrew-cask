cask 'appzapper' do
  version '2.0.1'
  sha256 'b7d0bdd05cf246a2f2ab18145b052824860cb74a6ae665fba9d403f6bb79fac4'

  url "http://www.appzapper.com/downloads/AppZapper#{version}.zip"
  appcast 'http://www.appzapper.com/az2appcast.xml',
          :sha256 => '16346109b4433f51cac07c897d9565b7125a7e348a28e1984f044b9220129b00'
  name 'AppZapper'
  homepage 'http://www.appzapper.com/'
  license :commercial

  app 'AppZapper.app'
end
