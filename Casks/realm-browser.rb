cask 'realm-browser' do
  version '2.1.8'
  sha256 '49c30916f5a11743a442f98831347c217ab2c6b1ebb662b647ee31659c883f83'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '15dad9188e2c3467e0bc5c5842cb8d28b3c6e116ddc3d72463d8f1d88d048b4f'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
