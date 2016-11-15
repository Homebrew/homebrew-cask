cask 'coda' do
  version '2.5.19'
  sha256 '5d734cdac6b47b07ca8ef9224611b0f7c8a57f1ec7b66eb7befdfcaf20896548'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  name 'Panic Coda'
  homepage 'https://panic.com/coda/'

  depends_on macos: '>= :lion'

  app "Coda #{version.major}.app"

  zap delete: [
                "~/Library/Application Support/Coda #{version.major}",
                "~/Library/Application Support/Growl/Tickets/Coda #{version.major}.growlTicket",
                "~/Library/Caches/com.panic.Coda#{version.major}",
                "~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda#{version.major}.help",
                "~/Library/Preferences/com.panic.Coda#{version.major}.plist",
                "~/Library/Preferences/com.panic.Coda#{version.major}.LSSharedFileList.plist",
                "~/Library/Preferences/com.panic.Coda#{version.major}.LSSharedFileList.plist.lockfile",
                "~/Library/Saved Application State/com.panic.Coda#{version.major}.savedState",
              ]
end
