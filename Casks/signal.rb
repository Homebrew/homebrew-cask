cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.13.0"
  sha256 arm:   "449d8c103c3a3ff3950c0037528d3210adbc861e45c5b69bb7e588db0b943284",
         intel: "488e5ab5f305625dd181f09679257b812037f7552bf791e1502efe814cee74a5"

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
