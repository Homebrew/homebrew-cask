cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.9.0-beta.1"
  sha256 arm:   "2fe2d5ff30da3c83456cb5c82e356dd9b73ee0ffaa8ae1060451d9fec8fc3f27",
         intel: "4188f2cdde891129e8ace19054610a4a96b8f5609e471d679001622655ef766e"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.dmg"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://github.com/signalapp/Signal-Desktop"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
