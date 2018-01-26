cask 'realm-studio' do
  version '1.14.0'
  sha256 '46b47e70119da73923524dbbd7783b93f3ef83fa3f8cc10a801a5d6fce8eefb1'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: 'a798fa52da75bba2039a1846b4367da2c7e2c9ff728dd9058edb0f04090f7f8b'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
