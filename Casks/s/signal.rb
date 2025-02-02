cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.40.1"
  sha256 arm:   "63d9b76e6cdefa88180e9d9a6bb26215d538540db7c18a3b21faa1388c9f6243",
         intel: "132e9c60a3de8634d3fc616fd3d4844bc1dfa3dc54bc0b863239201ef6f4a6f7"

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
