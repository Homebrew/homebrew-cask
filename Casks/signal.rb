cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "5.59.0"
  sha256 arm:   "323722eb477c40c7d2ebb98307a1186c9cc40cfd7d41cbd48469eca3a6da9330",
         intel: "72fb7c51978211b767144478c1e157980197227079dc6a4d95df81673644e4cb"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
