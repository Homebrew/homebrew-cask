cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.86.0"
  sha256 arm:   "4392ba04af0c3683c58ad5d2f226eae4056771725078a9d88f5c076e674c497a",
         intel: "55fed5606af936d567a6fab93a8b2f77ff6f5125ee5524e95908bc29e23f9f6a"

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
