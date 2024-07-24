cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.16.0"
  sha256 arm:   "1eda632d50d38f39ec01f3658dc23a0bc661304d852c2a576f3163a2bc78746c",
         intel: "0fd6a4f9d059d7c4006a480ac687b257ed006a3267cc6e607f3ec32f48e50b6b"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
