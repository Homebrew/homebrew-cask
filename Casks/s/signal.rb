cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.3.1"
  sha256 arm:   "07400a9a90c7ec820e1772b704c3a032e1de0d866494b0a0d75cea759c3a9469",
         intel: "5ba15fa7fcdf79ff471ab755468c8ef8f07ce8c60d7a807be76bca7041b79036"

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
