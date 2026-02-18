cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.90.0"
  sha256 arm:   "0399fd96175ed892864ed3065383c57630d74b4c2faf719989f1ae80fee4f860",
         intel: "269090438eeb94a6b4efa4cdb29d3e6b6a4b2c067a432d4650a59fdbd53f6558"

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
