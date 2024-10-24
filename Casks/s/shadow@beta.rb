cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10129"
  sha256 arm:   "028eed95a5abbf688ef7447007bc565d739185da0e602faea9cdcb030ed0788c",
         intel: "f139a526d66a895edb412cdb29b7c46ef4e441c0e1fa594611d0357a58ef4ef4"

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
