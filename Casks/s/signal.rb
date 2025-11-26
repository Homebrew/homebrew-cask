cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.80.1"
  sha256 arm:   "faed7fa2850da3136fecf09ddf17c8dc3cde04337151cba1e1d55032c84c9189",
         intel: "e22ac21e11ae1295c268c0c9ff0cac28ac4871972a58fcc5ec0d9563536bc4bd"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
