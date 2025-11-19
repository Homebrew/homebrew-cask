cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.79.0"
  sha256 arm:   "12a92d8361458c4df7bfb7bb6766a9fd51e37f338321b6944f74fa6748445e02",
         intel: "3ee01b91b83df0de36cbe8580bfa9c52884d80aadaa0e2d15a34f30621578a20"

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
