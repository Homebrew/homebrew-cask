cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.31.0"
  sha256 arm:   "bd5c4f05c53a6a289f6512537b2abe026083408196cf530733e6b371161cfcfd",
         intel: "7d275ee32f0c7653392dac006d011a3e0b769fd69334dde94d3bac6d13005bff"

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
