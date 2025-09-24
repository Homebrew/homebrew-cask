cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10299"
  sha256 arm:   "5916a8efd6b85e49f665e37d34be5226344438b60fd6ae1a81714b2386de8f1a",
         intel: "380c376213ceef8955dddd6abec4157acea52dcda7ba39a5335672d7ab11e2cb"

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
