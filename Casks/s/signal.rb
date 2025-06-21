cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.58.0"
  sha256 arm:   "5a6c36bd7e4c66f1cc5198f346b886410d5d7ee7f620b3b55977c3a07e841df9",
         intel: "e33bf599cdcf0a9a3cee68d003f8d0b7da01d2673bb7e61064d34b91b8f91d67"

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
