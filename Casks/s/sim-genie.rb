cask "sim-genie" do
  version "2024.1,306"
  sha256 "ca52bd4f238d0f8bd474f6a1634d44c486bdb45ac12a5c096719b6175558bf0d"

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
