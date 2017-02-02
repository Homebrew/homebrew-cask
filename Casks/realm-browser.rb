cask 'realm-browser' do
  version '2.1.4'
  sha256 'cc99796fa164486f6e7292e250fb8b2a48a37f39142fdce043784a79281e5695'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: 'c4cf11622c81804f5097e6244a55765d2d7d1a88296f3936133e3e14dc85adeb'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
