cask 'realm-browser' do
  version '2.1.6'
  sha256 '7eafd2e27fe4a89231368da62fbbd822341a5586b8c815d69fc4f6c1255b11ef'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '6a2b75b1b8a5a29e507938a59f7358b7fe4c6bdb0f37b269e73e8d87e0e5fafe'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
