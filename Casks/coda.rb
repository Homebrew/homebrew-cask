cask 'coda' do
  version '2.6.3'
  sha256 '6dcacdccf60fec8d972b2d3625087fc97fd90a1449af23ea767ca04efd2b1c48'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast "https://www.panic.com/updates/update.php?appName=Coda%20#{version.major}",
          checkpoint: '002aed94e24aca49027b0d4f6d85971a66252a0f2d5c3e4cfea3c860987de447'
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
