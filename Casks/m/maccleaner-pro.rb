cask "maccleaner-pro" do
  version "3.3.7,572"
  sha256 "f262f595aa48706e77381283ee14f83a5d8753867603348e2497bbd6fbe822e8"

  url "https://nektony.com/download/mac-cleaner-pro/dmg/mac-cleaner-pro.dmg?build=#{version.csv.second}"
  name "Nektony MacCleaner Pro"
  desc "Delete junk, unnecessary files and folders, and speed up your computer"
  homepage "https://nektony.com/mac-cleaner-pro"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/mac-cleaner-pro/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
