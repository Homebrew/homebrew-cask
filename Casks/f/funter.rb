cask "funter" do
  version "7.0.2,365"
  sha256 "37bf1d20e3fe7ee2102043d3008f03c6ffcc6d7a59b339e24941f92139c42892"

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
