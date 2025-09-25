cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.72.1"
  sha256 arm:   "cd649641c5c7fa20a89c139be3d291c88c1f79308f6e1baf032969ba37640f6d",
         intel: "8e7e98d21dc03fbb7d29ac79ee246a3b6186b68976bb9ffb016baca219df0e63"

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
