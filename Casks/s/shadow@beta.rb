cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10455"
  sha256 arm:   "5e1078f516015d7c580f760a6923a49e1b39550685b73a5340ff5a653b57134d",
         intel: "e2c54fb3457cc5d19074a7cc1b6a73f5517fee3e0672acd32cf389571ac1e036"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
