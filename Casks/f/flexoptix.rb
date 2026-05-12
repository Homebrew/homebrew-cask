cask "flexoptix" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "5.63.0-latest"
  sha256 arm:   "61d02acc6e3cea45fb9c2d61be7cfcc0ae52dd0431d16d7d553a127ae2607630",
         intel: "153962cba300e51ea0724880ddd8765a971ad399e9987f5a58b63f2312d14a29"

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
  depends_on macos: :big_sur

  app "FLEXOPTIX App.app"

  zap trash: [
    "~/Library/Application Support/flexoptix-app",
    "~/Library/Preferences/net.flexoptix.flexoptix.app.plist",
    "~/Library/Saved Application State/net.flexoptix.flexoptix.app.savedState",
  ]
end
