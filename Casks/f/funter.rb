cask "funter" do
  version "7.1,366"
  sha256 "56f516c28396fc5cb795f6fb4c639e40047e7df8d0a25b53c030a85998f2d727"

  url "https://download.nektony.com/download/funter/Funter.dmg?build=#{version.csv.second}"
  name "Funter"
  desc "Shows hidden files and folders and switches their visibility in Finder"
  homepage "https://nektony.com/products/funter"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/funter/update/update.xml"
    strategy :sparkle
  end

  app "Funter #{version.major}.app"

  # MacCleaner files are part of the cask
  zap trash: [
    "~/Library/Application Scripts/8DKG4XB37M.group.com.nektony.Funter-SIII",
    "~/Library/Application Scripts/8DKG4XB37M.group.com.nektony.MacCleaner-PRO-SIII",
    "~/Library/Application Scripts/com.nektony.Funter-SIII*",
    "~/Library/Application Support/com.nektony.Funter-SIII",
    "~/Library/Caches/com.nektony.Funter-SIII",
    "~/Library/Containers/com.nektony.Funter-SIII.FinderSyncExt*",
    "~/Library/Group Containers/8DKG4XB37M.group.com.nektony.Funter-SIII",
    "~/Library/Group Containers/8DKG4XB37M.group.com.nektony.MacCleaner-PRO-SIII",
    "~/Library/HTTPStorages/com.nektony.Funter-SIII",
    "~/Library/Preferences/com.nektony.Funter-SIII.plist",
    "~/Library/Saved Application State/com.nektony.Funter-SIII.savedState",
  ]
end
