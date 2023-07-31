cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.27.0"
  sha256 arm:   "d70a73df860edf9089f7c0e3b5f5415ae91c3342f477284d3a40b7d38664dc40",
         intel: "5426c209a48b69066878310ae4717c69390d64e3c4a002564c7cd10ad4f50da7"

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
