cask 'coda' do
  version '2.5.19'
  sha256 '5d734cdac6b47b07ca8ef9224611b0f7c8a57f1ec7b66eb7befdfcaf20896548'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast "https://www.panic.com/updates/update.php?appName=Coda%20#{version.major}",
          checkpoint: 'd8310a287cd373dad15ec242bf6b4e181dc5af358772f8030ed2b0c772aec2f8'
  name 'Panic Coda'
  homepage 'https://panic.com/coda/'

  depends_on macos: '>= :lion'

  app "Coda #{version.major}.app"

  zap delete: [
                "~/Library/Application Support/Coda #{version.major}",
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.coda2.sfl',
                "~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda#{version.major}.help",
                "~/Library/Caches/com.panic.Coda#{version.major}",
                "~/Library/Preferences/com.panic.Coda#{version.major}.plist",
                "~/Library/Saved Application State/com.panic.Coda#{version.major}.savedState",
              ]
end
