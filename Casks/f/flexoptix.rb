cask "flexoptix" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "5.48.0-latest"
  sha256 arm:   "560f743fef98e2a49a86ed624d2af64f7784645af162b9c894a2d82136033880",
         intel: "d058a1b6a998ece43e29ed83ece4c00b7e0614df0d6679feef3df0ac5756b0ab"

  url "https://flexbox.reconfigure.me/download/electron/mac/#{arch}/FLEXOPTIX%20App-#{version}#{arch_suffix}.dmg",
      verified: "flexbox.reconfigure.me/download/electron/mac/"
  name "FLEXOPTIX App"
  desc "Connect to your FLEXBOX without cables and configure transceivers"
  homepage "https://www.flexoptix.net/en/flexoptix-app/#"

  livecheck do
    url "https://flexbox.reconfigure.me/download/electron/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FLEXOPTIX App.app"

  zap trash: [
    "~/Library/Application Support/flexoptix-app",
    "~/Library/Preferences/net.flexoptix.flexoptix.app.plist",
    "~/Library/Saved Application State/net.flexoptix.flexoptix.app.savedState",
  ]
end
