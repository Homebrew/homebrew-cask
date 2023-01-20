cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.2.0"
  sha256 arm:   "af95ed0840a87c54e32b6d7ef4175da4aa5c1e7c05e9d9da456cdf7fb5573087",
         intel: "7b79d49c2140a90b04fded64a52c39edc00e18f370f435a2b40de2e7723b476f"

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
