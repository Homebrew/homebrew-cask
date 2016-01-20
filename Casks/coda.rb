cask 'coda' do
  version '2.5.12'
  sha256 '3bcb4a1f99a47edd087b9579c206a38cecae1a31287e84121c5775b8752a8c3f'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  name 'Panic Coda'
  homepage 'https://panic.com/Coda/'
  license :commercial

  depends_on macos: '>= :lion'

  app 'Coda 2.app'

  zap delete: [
                '~/Library/Application Support/Coda 2',
                '~/Library/Application Support/Growl/Tickets/Coda 2.growlTicket',
                '~/Library/Caches/com.panic.Coda2',
                '~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda2.help',
                '~/Library/Preferences/com.panic.Coda2.plist',
                '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist',
                '~/Library/Preferences/com.panic.Coda2.LSSharedFileList.plist.lockfile',
                '~/Library/Saved Application State/com.panic.Coda2.savedState',
              ]
end
