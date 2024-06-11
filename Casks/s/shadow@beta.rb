cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10041"
  sha256 arm:   "51f2b4e312a8c9009de065e66c0ba679d38120d8338d3839033111bf13323064",
         intel: "6d45d7e197313e87cd9a9b67a0e34dc60b1de88428f606ffb0370a2db93a0edd"

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
