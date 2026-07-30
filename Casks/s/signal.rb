cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.21.0"
  sha256 arm:   "8bbac6842bf56193e0b5d6c60c682cda7ff41b47ef05ecade6404c65b7a4f3f0",
         intel: "b53a622bb1f5131c13fe35898e020eabdd4f680c6f5dff0290350b28346e7b20"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
