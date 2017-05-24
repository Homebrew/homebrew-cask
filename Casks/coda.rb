cask 'coda' do
  version '2.6.5'
  sha256 '3420014729449592ec7c6fc1e860786944159f38aa07faea0538adb4749d51a9'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'https://library.panic.com/coda/releasenotes/',
          checkpoint: '57f29acb9e059fad4ef91bc7370e4ee692051d2f9505f726a4a8474c9a298ee7'
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
