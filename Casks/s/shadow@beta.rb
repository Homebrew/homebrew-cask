cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10374"
  sha256 arm:   "d79d245ba178e03a9c69f546a3c2283512efcb26a06f4576f74fa29656c16c00",
         intel: "b51946bb228d0a915e179b431a5f4a7c74f6b80a9ae2834e5839336ba443cc28"

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
