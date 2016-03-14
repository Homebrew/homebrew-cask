cask 'realm-browser' do
  version '0.98.2'
  sha256 '529d31d375a0a09b77d6c80531e3add99473e2b33ec457587698e148cee86abe'

  url "https://github.com/realm/realm-browser-osx/releases/download/#{version}/RealmBrowser.app.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: 'a82f1e55a88ba8c3502d57e3c5ff18a77557fbd4770734de07652c119d38e30d'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'
  license :apache

  app 'Realm Browser.app'
end
