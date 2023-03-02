cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.8.0"
  sha256 arm:   "406bbee39584157b2c976fd9eac5c25b1a16ecad5ca6960a58d21ea9d49fc91e",
         intel: "b2cd0daffcf1e8e91fc3286dc46f8df27762cd6bbb93f59a78bd30959bf09fdc"

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
