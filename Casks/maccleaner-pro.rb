cask "maccleaner-pro" do
  version "2.5,294"
  sha256 :no_check

  url "https://nektony.com/download/mac-cleaner-pro/dmg/mac-cleaner-pro.dmg"
  name "Nektony MacCleaner Pro"
  desc "All-in-one tool to delete junk, unnecessary files and fodlers, speed up computer"
  homepage "https://nektony.com/mac-cleaner-pro"

  livecheck do
    url "https://nektony.com/pro-support/mac-cleaner-pro/update/update.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "MacCleaner 2 Pro"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Application Support/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Caches/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Cookies/com.nektony.MacCleaner-PRO-SII.binarycookies",
    "~/Library/Preferences/com.nektony.MacCleaner-PRO-SII.plist",
  ]
end
