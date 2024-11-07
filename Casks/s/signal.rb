cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.32.0"
  sha256 arm:   "564323482d9a58b89c43baab4adb035f8556318a6b8d122953ea4f35df558b7e",
         intel: "4fbe4b6f4997ad7c1547c38267140db35504e6be57292a06e76bfd077026738f"

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
