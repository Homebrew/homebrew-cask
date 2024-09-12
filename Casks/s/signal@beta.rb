cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.25.0-beta.1"
  sha256 arm:   "50cb8a2a9aa1bf10c1c38af0eb76b3ddddb77cec8f1e5110ce18d6b57525ad79",
         intel: "e64700300fbc566a8e39fc2f514f26d6b322cde21cb8f035d1de5311cd90eb7b"

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
