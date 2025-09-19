cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.72.0-beta.1"
  sha256 arm:   "3a6b9b17c833f469ce75e1019fd02b1fb5471c9600a26191c47aaf81c48bbd81",
         intel: "c13a41f02b8680e2df938e409bd6760946bbaa737347045f615cf5df67721877"

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
