cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.13.0"
  sha256 arm:   "3bf39f2d0e07a9d7b1374926bbc3cd8ab64b65058bab0e0da87163790fea6a01",
         intel: "a1d1b8b51ffaa6086754ff8637672ec801fa35f81024b7361fb3fdbf9e247384"

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
