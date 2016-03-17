cask 'realm-browser' do
  version '0.98.5'
  sha256 'b2cc181e498ddd6b36612862bfe548717bc433bbe0f3a20615f3c68ce79e7325'

  url "https://github.com/realm/realm-browser-osx/releases/download/#{version}/RealmBrowser#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '59593c0313a9646ea54db68af510d33eed1054b18411ebbd3ff3441639b622ae'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'
  license :apache

  app 'Realm Browser.app'
end
