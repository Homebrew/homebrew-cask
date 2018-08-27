cask 'skitch' do
  version '2.8.1'
  sha256 'd1ae1479960de2b3069a2ae1904d2fb304250e74d6ad7f5d4275b4004ae8f5c5'

  url "https://cdn1.evernote.com/skitch/mac/release/Skitch-#{version}.zip"
  name 'Skitch'
  homepage 'https://evernote.com/products/skitch'

  auto_updates true

  app 'Skitch.app'

  zap trash: [
               '~/Library/Preferences/com.plasq.skitch.plist',
               '~/Library/Preferences/com.plasq.skitch.history',
               '~/Library/Application Support/Skitch',
               '~/Library/Application Support/com.skitch.skitch',
               '~/Library/Caches/com.evernote.ENAttachmentToPDFHelper',
               '~/Library/Caches/com.skitch.skitch',
               '~/Library/Preferences/com.evernote.ENAttachmentToPDFHelper.plist',
               '~/Library/Preferences/com.skitch.skitch.plist',
               '~/Library/Saved Application State/com.skitch.skitch.savedState',
             ]
end
