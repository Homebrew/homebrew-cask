cask "sim-genie" do
  version "2022.1,261"
  sha256 "7051e7bab3048ba34602bdc807565bea20feae17778e7f572f8e2740bc7ddec4"

  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version.csv.first}.#{version.csv.second}.zip",
      verified: "d1b3av25dd6jdq.cloudfront.net/"
  name "Sim Genie"
  desc "Easier access to Xcode Simulator functionality"
  homepage "https://simgenie.app/"

  livecheck do
    url "https://simgenie.app/releases/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Sim Genie.app"

  zap trash: [
    "~/Library/Application Support/Sim Genie",
    "~/Library/Caches/com.consumedbycode.simgenie",
    "~/Library/HTTPStorages/com.consumedbycode.simgenie",
    "~/Library/Preferences/com.consumedbycode.simgenie.plist",
  ]
end
