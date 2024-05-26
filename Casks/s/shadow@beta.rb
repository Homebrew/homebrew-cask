cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10024"
  sha256 arm:   "cf0d1c8dd4626397055346d9a192d29c34f0ea20e72a0c9149b64d9546ea3abd",
         intel: "76f651d12e0ab4bae6d2d01bef16a87d6ae8b2bbe0c7d421ca92aa87d4722f26"

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
