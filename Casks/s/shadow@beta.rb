cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10339"
  sha256 arm:   "cb1610de79a2a68b3c24ffcf30c799d53f8833e555f7a89683f7a26c27d0afe9",
         intel: "1d115fabb3fb6404803cf64d8cbf25865c420fd4be8a448c750fb3c94a77a115"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
