cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.11.0"
  sha256 arm:   "e19f7be4103a05b7dc2025292f4c50df578cb8d8245c8ac830681290d2f7f257",
         intel: "52f5fe0843f269b1cf9996bd0893d117f20095dd60f9d1dd3e9c47d2d5c7f123"

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
