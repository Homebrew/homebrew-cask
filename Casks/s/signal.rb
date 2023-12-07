cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.41.0"
  sha256 arm:   "2cbcfe0a626c16889b5f30f388555e03b8b5ff5a552312713156c73afa6de431",
         intel: "8f06e5259da7be9206a5bf0edde3534d20d98a0c903aec8d8bbc8fe48e17b5c7"

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
