cask 'coda' do
  version '2.6.5'
  sha256 '3420014729449592ec7c6fc1e860786944159f38aa07faea0538adb4749d51a9'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast "https://www.panic.com/updates/update.php?appName=Coda%20#{version.major}",
          checkpoint: '12535e5f22327de9ca8e0cd038af52cee0ff6c053f046ea52385820b850ed45a'
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
