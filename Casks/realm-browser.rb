cask 'realm-browser' do
  version '2.1.1'
  sha256 'e1daafd250cc4df1695e2f5809e78d383faef45d1c862905af0b3588b0ad90e4'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: 'a5f183540d2e264640d13abd4f58a049198e0117f6543563715b5fc939da8a19'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
