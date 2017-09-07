cask 'realm-browser' do
  version '2.1.10'
  sha256 '3cf989d4d3f8c7b02129f240ef0b27d3a928fcf4cd0ad3aec84342a97bcae195'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '17a683ee7090ccb36be37b52bb04d219c32893e12612fc1f557aa2eb890c5c9f'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
