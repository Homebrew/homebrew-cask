cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.63.0-beta.1"
  sha256 arm:   "eba6d2778234bad0e3b599fcda12be10f01d577f64f4a55a2febd84eb87569e9",
         intel: "d69afe9aee5a24d39dab8bf55522d25087b4e417ce0f2c7b8982bfe2a4b0d11b"

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
