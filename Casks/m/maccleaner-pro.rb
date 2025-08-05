cask "maccleaner-pro" do
  version "3.4.1,577"
  sha256 "ca7317b8af5cd621445a6b00c65d39085f7ad213baa20987bce86735d310359d"

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
