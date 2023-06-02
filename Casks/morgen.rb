cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "8cc5dfb4de1f0f2036006c5d677ea755643f64ef9a9bc6d88aa1e0ed783f3926",
         intel: "71a2c9a3ee58a11b656363a13976c12314584bf2b04760ea86dabaaf03354cb9"

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
