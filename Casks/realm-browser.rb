cask 'realm-browser' do
  version '2.1.5'
  sha256 '8c8113a33f840dafacb5db7083185fd6cdd1605827426736b8d44c2b8e2a6e77'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: 'e1bedf4ca694b5b87fa0b76637c7f7b7f807f39f55022c7e59734898e48c5f88'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
