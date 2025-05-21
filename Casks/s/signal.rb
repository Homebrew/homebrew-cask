cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.55.0"
  sha256 arm:   "91754757c2ec6965193a50ba97f4844d25e0f16f8f231bae671673d6b62a8b22",
         intel: "0785dd65db0ebb595bd035fd21bd3b9b1f7295e8b1589bf52401cc2b96329998"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
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
