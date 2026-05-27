cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.12.0"
  sha256 arm:   "086c12eb39cea7c4b8ca28825b2f74d17d954a74ac4a30c8b2a4a78dab80c8b7",
         intel: "72e9c779633cce831d7bd87949300d5db46002b708690207cf88ed30a976acf5"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
