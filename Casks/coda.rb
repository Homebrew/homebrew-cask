cask 'coda' do
  version '2.6.4'
  sha256 '78b74a22e84c617eae6af88cb5eb3056902fc10d750d26931095b7e163f66930'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast "https://www.panic.com/updates/update.php?appName=Coda%20#{version.major}",
          checkpoint: '916ac788e208996abde0b5efd16c1b5e146d55eb3ed60ba418a2a906eca7ee0e'
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
