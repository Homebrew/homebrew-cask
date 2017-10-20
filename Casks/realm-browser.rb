cask 'realm-browser' do
  version '3.0.0'
  sha256 '929f53cd0f99949d61c3730978e932ad6611a7fe98bff6bb3415d6c29c2a7019'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '729712ffd70fffefc7150a2a130a8ce0db8dac224032baebaeae5a7b8730757b'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
