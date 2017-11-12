cask 'jandi' do
  version :latest
  sha256 :no_check

  # d1fxzwizdp8gty.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d1fxzwizdp8gty.cloudfront.net/download/JANDI.dmg'
  name 'JANDI'
  homepage 'https://www.jandi.com/landing/'

  auto_updates true

  app 'JANDI.app'

  uninstall quit: 'com.jandi.osx.JANDI'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jandi.osx.jandi.sfl*',
                '~/Library/Application Support/JANDI',
                '~/Library/Application Support/com.jandi.osx.JANDI.ShipIt',
                '~/Library/Caches/com.jandi.osx.JANDI',
                '~/Library/Preferences/com.jandi.osx.JANDI.plist',
                '~/Library/Saved Application State/com.jandi.osx.JANDI',
              ]
end
