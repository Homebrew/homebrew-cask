cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.33.0"
  sha256 arm:   "987ed45ffd851e8d0f826ca4a4bb7e569cd2267ba99edae9d637d6d84ed67dbd",
         intel: "587390c85e7863c3a862a7cca6a764fbcf7ba10fe442d9e1200b2f13c44ee250"

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
