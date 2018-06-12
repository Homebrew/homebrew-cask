cask 'nylas-mail' do
  version '2.0.32-fec7941'
  sha256 '493e42d9913903d317827c75fa8cca2c1204e3b988c016491823f3c45dbb4cfb'

  # edgehill.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/NylasMail.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64'
  name 'Nylas Mail'
  homepage 'https://www.nylas.com/'

  auto_updates true
  conflicts_with cask: 'nylas-mail-lives'

  app 'Nylas Mail.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nylas.nylas-mail.sfl*',
               '~/Library/Application Support/com.nylas.nylas-mail.ShipIt',
               '~/Library/Application Support/Nylas Mail',
               '~/Library/Caches/com.nylas.nylas-mail',
               '~/Library/Caches/com.nylas.nylas-mail.ShipIt',
               '~/Library/Caches/Nylas Mail',
               '~/Library/Preferences/com.nylas.nylas-mail.helper.plist',
               '~/Library/Preferences/com.nylas.nylas-mail.plist',
               '~/Library/Saved Application State/com.nylas.nylas-mail.savedState',
               '~/.nylas-mail',
             ]

  caveats do
    discontinued
  end
end
