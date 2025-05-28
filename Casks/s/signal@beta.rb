cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.57.0-beta.1"
  sha256 arm:   "29e306380b81d19c713f1ec286a6f6bc12e01a88725d6a46a7e92451d54e1da0",
         intel: "7567a522a9e70edff36d77e60b8ba708564b9e1cf167cec42ad631a072424c14"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
