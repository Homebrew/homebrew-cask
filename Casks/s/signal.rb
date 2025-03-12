cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.46.0"
  sha256 arm:   "98d027129266db9b3b1be5d75555f39b6fb7d3ff641fa3814415675f6666a302",
         intel: "f95d3b34d7c02e5b34b3eb7c1b2021482c569a7ddae82cb92d386cde7f1b44ee"

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
