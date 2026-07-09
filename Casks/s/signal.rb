cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.18.0"
  sha256 arm:   "7b4d32118759054b2d44c0a4cde7ad4f50c1b4a0b6736a8929cde46c9295b815",
         intel: "f27018e4d5741bee3060ab504a7b6ba6939acf8bfcc2eb3964eac2c6c4796d76"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
