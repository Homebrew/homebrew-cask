cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.18.0"
  sha256 arm:   "303396e1a001e35f8f1777c854e96b5141d83f84b04a96ff6b0f4609fd756aa8",
         intel: "342d11dbbd081a06aa7fc2c06861a8dab043285e90c905b43eab18b416cff656"

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
