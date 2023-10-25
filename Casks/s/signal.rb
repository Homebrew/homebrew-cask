cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.36.0"
  sha256 arm:   "a24c596521317379b0ad809ce50e6ddf15bbe5f9bf0c7364c09ec0d10de0fd06",
         intel: "6d4839d9b6ab7ac292b0d384931128be5364b210c6b295ba33fe6e7abfb1768d"

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
