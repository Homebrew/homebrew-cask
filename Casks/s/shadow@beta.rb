cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10245"
  sha256 arm:   "b2c1d08af6cd2a166ac430a7e8a182273be6480b11c550727693b843a18acf10",
         intel: "1661ce7cb5fa2b4bceb013f997bfad3f170dd7f3d8c34357fff6b252b4176ae3"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
