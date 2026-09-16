cask "flexoptix" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "5.68.0-latest"
  sha256 arm:   "dd0a2ce559eb9295a52b674f91e924acf07adc7a4bcdd9136573632d73c0b26e",
         intel: "d390550b089081a1af8d3daeda5d14c7bdd9067d40edc9be8aa487bfb0b6495c"

  url "https://flexbox.reconfigure.me/download/electron/mac/#{arch}/FLEXOPTIX%20App-#{version}#{arch_suffix}.dmg"
  name "FLEXOPTIX App"
  desc "Connect to your FLEXBOX without cables and configure transceivers"
  homepage "https://www.flexoptix.net/en/flexoptix-app/#"

  livecheck do
    url "https://flexbox.reconfigure.me/download/electron/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "FLEXOPTIX App.app"

  zap trash: [
    "~/Library/Application Support/flexoptix-app",
    "~/Library/Preferences/net.flexoptix.flexoptix.app.plist",
    "~/Library/Saved Application State/net.flexoptix.flexoptix.app.savedState",
  ]
end
