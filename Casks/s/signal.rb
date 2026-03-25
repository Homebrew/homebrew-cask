cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.4.0"
  sha256 arm:   "6965b134281ad56b4c0060b3085521debe424a6c225d96096563f6b5023ec861",
         intel: "bac96f870767e122d12e504a8ac4a7fc054061309f84590bc85508dd0be3b839"

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
