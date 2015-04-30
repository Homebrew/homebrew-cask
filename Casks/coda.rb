cask :v1 => 'coda' do
  version '2.5.8'
  sha256 '8c8ac78f50e256fbe8a3c7311bc7f1aff2c7482bf4919c841675d360566674f5'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  name 'Coda'
  homepage 'https://panic.com/Coda/'
  license :commercial
  tags :vendor => 'Panic'

  zap :delete => [
    '~/Library/Application Support/Coda 2',
    '~/Library/Application Support/Growl/Tickets/Coda 2.growlTicket',
    '~/Library/Caches/com.panic.Coda2',
    '~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda2.help',
    '~/Library/Preferences/com.panic.Coda2.plist',
    '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist',
    '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist.lockfile',
    '~/Library/Saved Application State/com.panic.Coda2.savedState'
  ]

  app 'Coda 2.app'
end
