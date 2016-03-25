cask 'keymo' do
  version '1.2.3'
  sha256 '0c89580ad1b805fa6a4854059b6a3f82990f899c8649cd641f7dbd36590d073c'

  url 'https://manytricks.com/download/keymo'
  appcast 'https://manytricks.com/keymo/appcast.xml',
          checkpoint: '41b6f949a406b86dd6cbe11d7cadfb9f4242525c209d1b881a5a3c027957976c'
  name 'Keymo'
  homepage 'https://manytricks.com/keymo'
  license :commercial

  auto_updates true

  app 'Keymo.app'

  zap delete: '~/Library/Preferences/com.manytricks.Keymo.plist'
end
