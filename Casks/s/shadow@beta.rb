cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10079"
  sha256 arm:   "ea349dc54cb736ca2e73d7034603e000a55ba22261b0f57d4805df9cd24dc734",
         intel: "1667b26fb74f56e13a41d33fa39e343a0b031cfd84112a562c502be866a7ed40"

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
