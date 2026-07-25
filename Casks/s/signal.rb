cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.20.0"
  sha256 arm:   "1365ea7b0b036d8cf706463a09472e5c90bdd308c167fe1313164c8c710f20a3",
         intel: "bd94f10acf7ab6df033fc87a47aae0b42f4e3083dcbfb820332b755592686bd2"

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
