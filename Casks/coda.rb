cask 'coda' do
  version '2.6.8'
  sha256 '7058221a53e219f8d25ce182edbb0bd62482e9c99dcadd96e63f93f901304758'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'https://library.panic.com/releasenotes/coda2/',
          checkpoint: '9bdca07ecf83ceb245c9bc8b25cf2492c5200234bc8739657febfd09d0778489'
  name 'Panic Coda'
  homepage 'https://panic.com/coda/'

  depends_on macos: '>= :lion'

  app "Coda #{version.major}.app"

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.coda2.sfl',
                "~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda#{version.major}.help",
                "~/Library/Caches/com.panic.Coda#{version.major}",
                "~/Library/Saved Application State/com.panic.Coda#{version.major}.savedState",
              ],
      trash:  [
                "~/Library/Application Support/Coda #{version.major}",
                "~/Library/Preferences/com.panic.Coda#{version.major}.plist",
              ]
end
