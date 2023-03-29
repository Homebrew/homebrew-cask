cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.6.8"
  sha256 arm:   "e39d631d35b49219a92c9b7838a425d4c58e9e9d073dda9d3bbbd7fdc930c008",
         intel: "53b1965e513e3414b56dbee2bd86e01b12fdd8998299a85bd6bc0918d73682d8"

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
