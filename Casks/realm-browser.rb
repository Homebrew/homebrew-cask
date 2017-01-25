cask 'realm-browser' do
  version '2.1.3'
  sha256 'ee73a95a080fe6b9c23976b12a3b21318572aa14780d25546f2363ca884091c7'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '1864b6387152ebd114c75e3f1a7a81638ea90a5380a83abda7e72236c64dcfee'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
