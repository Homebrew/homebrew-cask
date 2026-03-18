cask "flexoptix" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "5.60.0-latest"
  sha256 arm:   "415cb62bb1d623706fd7c80d2a23964b64595c473237ee7bca559e323bd47ed0",
         intel: "21a3ebc95103fe09f8e26cbc3482c8279ad85f799cd04345f66614950cd988cc"

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
  depends_on macos: ">= :big_sur"

  app "FLEXOPTIX App.app"

  zap trash: [
    "~/Library/Application Support/flexoptix-app",
    "~/Library/Preferences/net.flexoptix.flexoptix.app.plist",
    "~/Library/Saved Application State/net.flexoptix.flexoptix.app.savedState",
  ]
end
