cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.23.0"
  sha256 arm:   "04c7b42d8098a762dd320458cf7cfede772e2f732f66de5d5cfcb17144cc9df0",
         intel: "356a773aab5978d5a78c6fd049b763626421f57b3691e33f7b880dcfc81e3367"

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
