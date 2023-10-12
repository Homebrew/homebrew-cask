cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.34.0"
  sha256 arm:   "48a2d498a8b2d576055f74f331d8cd8e5f82494c20ef1f24993adfe32fd20aad",
         intel: "930e926421bb3f56265a28b9b65b76705004ee31806aa7155184cd5d1c7a34c9"

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
