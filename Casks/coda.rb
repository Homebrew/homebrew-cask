cask :v1 => 'coda' do
  version '2.5.11'
  sha256 '7a1f723a661fe4fa0c6d3cfd13615492777167602ffea03eab34eaee0cbe9a5e'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
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

  depends_on :macos => '>= :lion'

  app 'Coda 2.app'
end
