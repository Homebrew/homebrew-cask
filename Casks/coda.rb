cask 'coda' do
  version '2.6.10'
  sha256 '5f780a6a16548501dd5692265ca6eb10a04e7409cf9954b1660c9b62591480ad'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'https://library.panic.com/releasenotes/coda2/',
          checkpoint: '3db11e8548e3b8c61f42296c0868861e8e3160c259bed78674ac2261695258cc'
  name 'Panic Coda'
  homepage 'https://panic.com/coda/'

  auto_updates true
  depends_on macos: '>= :lion'

  app "Coda #{version.major}.app"

  zap trash: [
               "~/Library/Application Support/Coda #{version.major}",
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.coda2.sfl*',
               "~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda#{version.major}.help*",
               "~/Library/Caches/com.panic.Coda#{version.major}",
               "~/Library/Preferences/com.panic.Coda#{version.major}.plist",
               "~/Library/Saved Application State/com.panic.Coda#{version.major}.savedState",
             ]
end
