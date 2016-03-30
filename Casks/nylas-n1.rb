cask 'nylas-n1' do
  version '0.4.16-8cb7748'
  sha256 '3a799db143112b3a6f63b5c99fb00f8e1d4a15a4a3410e042d7556183bdded40'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '35d0ad14c065695f1f248aa7ec028c73fa5753950b3972a116d65b61b6381dbf'
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
