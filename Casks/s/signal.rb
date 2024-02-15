cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.47.1"
  sha256 arm:   "5d114cd47d1ea6e3c0c59c4b3e7eb033136eb25e08edca4448d79fa9d304c63e",
         intel: "71b3278000e676e75719a1eb8a8d15949a429668256207de2bf98beb4d2299d1"

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
