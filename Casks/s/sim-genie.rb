cask "sim-genie" do
  version "2026.2,347"
  sha256 "65ae1e1f6900b7e298613b15135ff510eca3a1e0b26d479a196576c07b4360e9"

  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version.csv.first}.#{version.csv.second}.zip",
      verified: "d1b3av25dd6jdq.cloudfront.net/"
  name "Sim Genie"
  desc "Easier access to Xcode Simulator functionality"
  homepage "https://simgenie.app/"

  livecheck do
    url "https://simgenie.app/releases/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :big_sur

  app "Sim Genie.app"

  zap trash: [
    "~/Library/Application Support/Sim Genie",
    "~/Library/Caches/com.consumedbycode.simgenie",
    "~/Library/HTTPStorages/com.consumedbycode.simgenie",
    "~/Library/Preferences/com.consumedbycode.simgenie.plist",
  ]
end
