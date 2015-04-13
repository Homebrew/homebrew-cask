cask :v1 => 'coda' do
  version '2.5.7'
  sha256 '2140a24ba9aafd9526ae8279f9deca18e5ed01336bca43514c6d6cc5ce836139'

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
