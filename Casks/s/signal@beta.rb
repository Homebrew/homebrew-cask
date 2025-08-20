cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.68.0-beta.1"
  sha256 arm:   "c6c1b48d079373e81c3b714a2063246d562967a9eb75452e1a18c2ae91c8d428",
         intel: "1197bcf55e01e4639765422c0408a9ab00ecf4b3f58a77e2c19515748fb721bf"

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
