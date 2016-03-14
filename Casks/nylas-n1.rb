cask 'nylas-n1' do
  version '0.4.14-53cd69b'
  sha256 '1bbf4f3b34127dd0edbd8bf57a21b72f9b8ad976627a4ed4d2c530557448f101'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '1445673dda759f2ad1bb6583ecffa7bc7c8ce0cd488879ca99dd64d5678a064e'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  auto_updates true

  app 'Nylas N1.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nylas.nylas-mail.sfl',
                '~/Library/Application Support/com.nylas.nylas-mail.ShipIt',
                '~/Library/Application Support/Nylas N1',
                '~/Library/Caches/com.nylas.nylas-mail',
                '~/Library/Caches/Nylas N1',
                '~/Library/Preferences/com.nylas.nylas-mail.plist',
                '~/Library/Saved Application State/com.nylas.nylas-mail.savedState',
              ]
end
