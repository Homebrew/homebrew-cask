cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.16.0"
  sha256 arm:   "8cfe8a815af772c07c3fe7dc474425301d1d17e7dc25dcbf7a0775446d1e5336",
         intel: "a49b8d73f0667ccd3dc2396eff9be183763e7a65105c7f0e551b1fc459c8e6c5"

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
