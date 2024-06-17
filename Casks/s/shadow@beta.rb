cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10055"
  sha256 arm:   "b57315d8ef3d5d62df5805ccd06feadd75494eb66780e2cee7e7b7bfbab131f4",
         intel: "93a99dd91e52800ac7723f252ff00ba16f2875b65f6eb1c873d6fd67e6d525e7"

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
