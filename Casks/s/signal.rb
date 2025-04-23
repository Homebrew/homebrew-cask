cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.52.0"
  sha256 arm:   "473e3ebe922ad46c4b44a5c7adee183bb748cbc4c8e219ef7eb3151513943631",
         intel: "3d5544c3444287639445a4080926df73558edf4c87fabf6fdc6e4925fb33d11c"

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
