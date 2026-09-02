cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.25.0"
  sha256 arm:   "956a5ec1db1622bad9c54bd336285349c60d066eea7d645dd52bfb910900263b",
         intel: "cc6d4355d906ee4a6d6a1cca34f7c4f44d0bd40fd1afdb79bfa0be0863285043"

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
