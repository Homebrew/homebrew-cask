cask 'realm-browser' do
  version '2.1.5'
  sha256 '8c8113a33f840dafacb5db7083185fd6cdd1605827426736b8d44c2b8e2a6e77'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '045858267321ac397c121cc0566476f1c50d22ea7f795e31ef4d049ccb1f46ce'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
