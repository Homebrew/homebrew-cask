cask 'realm-studio' do
  version '2.0.0'
  sha256 '7f63a44daf7a334eb32288f4868ea9d4a52976d7fa0dc71abe2ef8ad0581ec50'

  url "https://static.realm.io/downloads/realm-studio/Realm%20Studio-#{version}-mac.zip"
  appcast 'https://static.realm.io/downloads/realm-studio/latest-mac.yml',
          checkpoint: '073d577c3b17104ce8a13700500105ff2706d027712e1e3b64dd6a26469210bb'
  name 'Realm Studio'
  homepage 'https://realm.io/products/realm-studio/'

  app 'Realm Studio.app'
end
