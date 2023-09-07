cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.30.1"
  sha256 arm:   "b87e14b86cdd88624f5fad69befc3f021e3bbf69124b511304edfb6c2c52bdb7",
         intel: "cf9e90bbde58bb80f55d9a85d6acc266ce39185e039883b5024a7f35e379c888"

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
