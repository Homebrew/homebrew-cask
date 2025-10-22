cask "maccleaner-pro" do
  version "4.0,579"
  sha256 "46bd888772e8334e912219c91139f6ca2661326a784f4d56b6b2f7e72e5c4cef"

  url "https://nektony.com/download/mac-cleaner-pro/dmg/mac-cleaner-pro.dmg?build=#{version.csv.second}"
  name "Nektony MacCleaner Pro"
  desc "Delete junk, unnecessary files and folders, and speed up your computer"
  homepage "https://nektony.com/mac-cleaner-pro"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/mac-cleaner-pro/update/update.xml"
    strategy :sparkle
  end

  auto_updates true

  suite "MacCleaner #{version.major} Pro"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.MacCleaner-PRO-SII*",
    "~/Library/Application Support/com.nektony.MacCleaner-PRO-SII*",
    "~/Library/Caches/com.nektony.MacCleaner-PRO-SII*",
    "~/Library/Cookies/com.nektony.MacCleaner-PRO-SII.binarycookies",
    "~/Library/Group Containers/*.com.nektony.MacCleaner-PRO-SII*",
    "~/Library/HTTPStorages/com.nektony.MacCleaner-PRO-SII*",
    "~/Library/Preferences/*.com.nektony.MacCleaner-PRO*.plist",
    "~/Library/Saved Application State/com.nektony.MacCleaner-PRO-SII*.savedState",
  ]
end
