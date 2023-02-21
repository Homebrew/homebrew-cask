cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.6.6"
  sha256 arm:   "42e7063a18f72049a09bc13b62dce2a02e337e0fe974d3b9f82c03e5024b1b1f",
         intel: "bdac2d2491128cbdb1e4841fd0812841d796eb839299daa559334e3260c6f0b6"

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
