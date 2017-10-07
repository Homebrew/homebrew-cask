cask 'coda' do
  version '2.6.7'
  sha256 '31de29365d49a15c4a24746e383588f5448585fc1220e9b82f86ab2625804192'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'https://library.panic.com/releasenotes/coda2/',
          checkpoint: 'bc9f973dfadeee871b089acb8b37c7e9d5ac0da84bd2a1c06de705d8d321de50'
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
