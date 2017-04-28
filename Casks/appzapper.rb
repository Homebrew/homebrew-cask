cask 'appzapper' do
  version '2.0.1'
  sha256 'b7d0bdd05cf246a2f2ab18145b052824860cb74a6ae665fba9d403f6bb79fac4'

  url "https://www.appzapper.com/downloads/AppZapper#{version}.zip"
  appcast "https://www.appzapper.com/az#{version.major}appcast.xml",
          checkpoint: '726661c71d2e4be4a6905d6ca410674a146c1e7f3333155c415a958da4a8ef39'
  name 'AppZapper'
  homepage 'https://www.appzapper.com/'

  auto_updates true

  app 'AppZapper.app'
end
