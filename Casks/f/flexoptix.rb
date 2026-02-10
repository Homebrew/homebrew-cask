cask "flexoptix" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "5.59.0-latest"
  sha256 arm:   "be1275efc75f231dc85a8b9293564e2b660e16f58f4e890542e41364f168c47b",
         intel: "baf912e2d0e7e660049a39a13c93821b81686fda7ae9dc1827f72ccee080dc5a"

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
