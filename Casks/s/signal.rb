cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.88.0"
  sha256 arm:   "e7337dac2259f0d6157da5e33b493a1c1c7aa0f250c03497eee6deb251038d57",
         intel: "addfb403c520544cf4b661a064b3d42c691554543d4518c72e8d94c075c3fcc2"

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
