cask 'realm-browser' do
  version '3.0.1'
  sha256 'b789dfb68aab6e37222cbf97bd056f422c6c7df3bf771603d7fb4aba58f32ce3'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
