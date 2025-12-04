cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.81.0"
  sha256 arm:   "d5eaef7a253c5c350d23e56165fade45ad094dbe8b41d97892a9d1565bd886f9",
         intel: "704d17101d6ae6d75fef320d02d32a6dd3e06ca0d453c36c42ec35e74320e517"

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
