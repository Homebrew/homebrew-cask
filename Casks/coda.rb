cask 'coda' do
  version '2.6.6'
  sha256 '7fa6e309bf511ed147521be4d67b0bc369be06b514dca9cc415ee927ac6d15ea'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'https://library.panic.com/releasenotes/coda2/',
          checkpoint: '0033294a433cd14446fff6c392ee0e9d0e1215c0dad433ec745803862929939d'
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
