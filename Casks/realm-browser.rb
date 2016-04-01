cask 'realm-browser' do
  version '0.98.6'
  sha256 'a2d7be0985433239640416cb098db0f0812766bbeec3b6113e9a8557f1fc66f7'

  url "https://github.com/realm/realm-browser-osx/releases/download/#{version}/RealmBrowser#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: 'b3cf66797d3469ee99ba6b8615d8cc53f583f44a893c5294bab98dd8d55a05bc'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'
  license :apache

  app 'Realm Browser.app'
end
