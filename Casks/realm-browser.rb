cask 'realm-browser' do
  version '2.1.7'
  sha256 '6dec2a87d27595daf8c76c1ce10ebf7b59375b1b889104355e058cf8069279f1'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/RealmBrowser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: '4a08c8618ea196c3a3b0c522b28861a8205d1ec36d9d02f9f4bba81204a2212c'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
