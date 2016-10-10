cask 'realm-browser' do
  version '2.0.0'
  sha256 '9e1e6493829e960282d877e8a82eae244370422c578c46ba7dbd975a79f07772'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '47f78f20dbd0320e1f9f584b86fcac736f14e2c100eb8bd4bfc2f9000552b64f'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
