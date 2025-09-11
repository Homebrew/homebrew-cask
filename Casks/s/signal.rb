cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.70.0"
  sha256 arm:   "bd492ee0404152aec58c7d4e051c28c90068f6f6383429923383494758441b27",
         intel: "2d919fe3c7c6122500e36f8751d1757fb6247dc7f7c287b56d41ae340e4f2c26"

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
