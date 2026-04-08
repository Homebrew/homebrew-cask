cask "sim-genie" do
  version "2026.1,341"
  sha256 "2ba02bbc8fc7f9bf9af2c4f0c6bde77927e6a9511f2c4babeb8d9800b3c35c01"

  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version.csv.first}.#{version.csv.second}.zip",
      verified: "d1b3av25dd6jdq.cloudfront.net/"
  name "Sim Genie"
  desc "Easier access to Xcode Simulator functionality"
  homepage "https://simgenie.app/"

  livecheck do
    url "https://simgenie.app/releases/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Sim Genie.app"

  zap trash: [
    "~/Library/Application Support/Sim Genie",
    "~/Library/Caches/com.consumedbycode.simgenie",
    "~/Library/HTTPStorages/com.consumedbycode.simgenie",
    "~/Library/Preferences/com.consumedbycode.simgenie.plist",
  ]
end
