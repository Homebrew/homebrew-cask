cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.87.0"
  sha256 arm:   "8cd96536918873dfe617f8ab1fa451b65e9b4f8ec8a93ba9d7e91a25fd7132eb",
         intel: "a8c22e21cff6d1f7aae991c9e04b1d420dc28726c27fa310740e3e870b75d89a"

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
