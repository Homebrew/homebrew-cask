cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "cf8fffbcdcde67c9d45ccf9577848990f13ebb9200fc900ad125fb12c624e4be",
         intel: "d1823f583e9bd6a3a029247d0b6e1f37d0c7c2e63f710317ba479e69cc12ab84"

  url "https://download.todesktop.com/210203cqcj00tw1/Morgen%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/210203cqcj00tw1/"
  name "Morgen"
  desc "All-in-one calendars, tasks and scheduler"
  homepage "https://morgen.so/"

  livecheck do
    url "https://download.todesktop.com/210203cqcj00tw1/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Morgen.app"

  zap trash: [
    "~/Library/Application Support/Morgen",
    "~/Library/Preferences/com.todesktop.210203cqcj00tw1.plist",
    "~/Library/Saved Application State/com.todesktop.210203cqcj00tw1.savedState",
  ]
end
