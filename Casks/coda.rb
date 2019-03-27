cask 'coda' do
  version '2.7.1'
  sha256 'd4b15632dd7813ecc6e60fa98709705a8156193d77ac3496032683156092f0b3'

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast 'https://www.panic.com/updates/update.php?appName=Coda%202&appVersion=1'
  name 'Panic Coda'
  homepage 'https://panic.com/coda/'

  auto_updates true

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
