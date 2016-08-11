cask 'nylas-n1' do
  version '0.4.47-3a2a94c'
  sha256 '8bfba97c33cf1728b13e0a3f892acd9e2a2ba9618d29782b66f97e6ca276f11e'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: 'e99b9fe721977067dc220a3564d545dc43245f4c00b7cd0d0e4f45a84fc24c25'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/'
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
