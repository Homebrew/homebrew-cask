cask "maccleaner-pro" do
  version "4.0.2,585"
  sha256 "49e1f9e1536f3b75b533ab5204822d428b60ce7269f9ede1c14bda0055167dc7"

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
