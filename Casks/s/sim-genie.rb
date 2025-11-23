cask "sim-genie" do
  version "2025.2,322"
  sha256 "661fa527d528cd984e45e933d8ce8df0fef9a8fa5770b7380298ec3ed75f93d5"

  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version.csv.first}.#{version.csv.second}.zip",
      verified: "d1b3av25dd6jdq.cloudfront.net/"
  name "Sim Genie"
  desc "Easier access to Xcode Simulator functionality"
  homepage "https://simgenie.app/"

  livecheck do
    url "https://simgenie.app/releases/macos/appcast.xml"
    strategy :sparkle
  end

  app "Sim Genie.app"

  zap trash: [
    "~/Library/Application Support/Sim Genie",
    "~/Library/Caches/com.consumedbycode.simgenie",
    "~/Library/HTTPStorages/com.consumedbycode.simgenie",
    "~/Library/Preferences/com.consumedbycode.simgenie.plist",
  ]
end
