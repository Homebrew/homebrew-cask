cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.18.0-beta.1"
  sha256 arm:   "9587b0c80828c91d3846ac4abff6da1fd28be2ce61609da15e81b74c81f79386",
         intel: "0d85ce83e11d9568251975e4deb3190fa9bfe9d6274d0d7c8a5f48001effe95c"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
