cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.84.0-beta.2"
  sha256 arm:   "875f577f82f88f062a51bd9ce84ee9d994f2d1b15323bdbe590a5f42b3fa3d3e",
         intel: "47d6ec77ce8272ac3f166f0ccbdfadd8e945b3410425bdf76cdff40a5c414706"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
