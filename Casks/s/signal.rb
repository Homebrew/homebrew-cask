cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "6.40.0"
  sha256 arm:   "42d44bd291059209341a1206a51fa43e4cec23979c275cb049981ecb4ff06bd8",
         intel: "c1734c14dee5ff07b51b239bbf4078f2ad4bb1a752f11439b4333e6fd6546f33"

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
