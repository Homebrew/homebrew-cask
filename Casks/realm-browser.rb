cask 'realm-browser' do
  version '3.0.1'
  sha256 'b789dfb68aab6e37222cbf97bd056f422c6c7df3bf771603d7fb4aba58f32ce3'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '1d17a6942e0168bff7727774046c4778c5cd160932b9f24170dc7e83ec7f0f1a'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
