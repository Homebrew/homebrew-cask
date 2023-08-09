cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.7.5"
  sha256 arm:   "abb777f01bffc2758616cda96086e6fd904d10e8ce6ed0a46953aebe10e864ac",
         intel: "505e7b2c1d6d4802640b4ddedee1160a8e198a5343bbb56de3c006886b9920f2"

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
