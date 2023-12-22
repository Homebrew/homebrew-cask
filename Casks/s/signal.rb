cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.42.1"
  sha256 arm:   "2ee18e7cbd54c2438f00bb9c89165d050b280c15721dbf53b6cb17053fab8ce1",
         intel: "5d97253ae658fc8bf9050952c4c3ee34d83e5b49c1958ceb962557bf88129822"

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
