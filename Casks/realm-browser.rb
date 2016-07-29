cask 'realm-browser' do
  version '0.101.0'
  sha256 '2bda0e80feaa09d799822d0893498d697a159fe1393c6e426d9c01f61b09ca5d'

  url "https://github.com/realm/realm-browser-osx/releases/download/#{version}/RealmBrowser#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '29539a7cfaea5e2c001b8e4d42a5430184493b5f5be8316225f04818f05b2e79'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'
  license :apache

  app 'Realm Browser.app'
end
