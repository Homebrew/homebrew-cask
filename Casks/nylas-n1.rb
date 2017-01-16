cask 'nylas-n1' do
  version '0.4.402-74a7c7f'
  sha256 '2e0270e40df2cb21f2013714641ed3514bf2cc0a9a846853fffd68b0fc4eabcf'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.zip"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '62e6f8ed3695f39f3796a1f5a4aced61c860d6833cfec711e8f1a16bbbca5270'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/'

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
