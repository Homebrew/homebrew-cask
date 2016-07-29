cask 'appzapper' do
  version '2.0.1'
  sha256 'b7d0bdd05cf246a2f2ab18145b052824860cb74a6ae665fba9d403f6bb79fac4'

  url "http://www.appzapper.com/downloads/AppZapper#{version}.zip"
  appcast 'http://www.appzapper.com/az2appcast.xml',
          checkpoint: 'b91ae47cbd23159ada1e03357647dc3140cd35ef509dfa44ed13e369aad07e88'
  name 'AppZapper'
  homepage 'http://www.appzapper.com/'
  license :commercial

  auto_updates true

  app 'AppZapper.app'
end
