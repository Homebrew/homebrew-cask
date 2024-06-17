cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10053"
  sha256 arm:   "cf5eb1218ca0ce45664b77292d85a94f2301e12d91843d78a7a5f6cd8e9b7682",
         intel: "23376c2d08ed6a9aba3f8cf406cd8431731bdc7564f4bf90e3d702de59d94ade"

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
