cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.3.0"
  sha256 arm:   "6096c0cdee9a504007b71b87bf10a36ae16358db8caf650b30f22eb07af84662",
         intel: "1d573e22f2d6644f9ef5be4d23ca6dfea526e37d785a2e14096a2ed510c9ecb1"

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
