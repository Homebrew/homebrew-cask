cask "maccleaner-pro" do
  version "2.9.2"
  sha256 :no_check

  url "https://nektony.com/download/mac-cleaner-pro/dmg/mac-cleaner-pro.dmg"
  name "Nektony MacCleaner Pro"
  desc "Delete junk, unnecessary files and folders, and speed up your computer"
  homepage "https://nektony.com/mac-cleaner-pro"

  livecheck do
    url "https://download.nektony.com/pro-support/mac-cleaner-pro/update/update.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :el_capitan"

  app "MacCleaner 3 Pro"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Application Support/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Caches/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Cookies/com.nektony.MacCleaner-PRO-SII.binarycookies",
    "~/Library/Preferences/com.nektony.MacCleaner-PRO-SII.plist",
  ]
end
