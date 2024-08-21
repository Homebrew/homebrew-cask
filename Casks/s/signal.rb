cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.21.0"
  sha256 arm:   "f7f7eba2915f978d1d0713465361af243fb223778be8d7de0eaacb9e07e5cd56",
         intel: "12cfcdc0002ae4c901205f6ee8d855fb255dd5064eccd46af954183c641ae2fc"

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
