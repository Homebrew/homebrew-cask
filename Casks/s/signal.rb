cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.44.0"
  sha256 arm:   "8c2965ecb67a4f5c7613f72b95cdaa3ae9c3376c7d46a2e639b1a928b309260a",
         intel: "c4d26cba310befb5ac9b298c67f8756eb5c88927ea3450d08163788409885725"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
