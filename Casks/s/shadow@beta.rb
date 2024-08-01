cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10099"
  sha256 arm:   "aada314cfc78a361156b8b495c278177138bb21d33b7dec8ce58ead9b33ccb53",
         intel: "8b6c3a1f7567c320d5a4255fb6f4458dc120df7f8f228d83e702c22002039b41"

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
