cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.6.0"
  sha256 arm:   "2d18716065421fda3628871a88ca21b3a49470a85d8051b1ef9687a3eab9b78c",
         intel: "76ac8d37bbba592d98f817188dee37a4d7abe3ddb99062c43232e9e8e010af4c"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
