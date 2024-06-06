cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10031"
  sha256 arm:   "38963c2815e110b431a36086fd635b5f97ee510b08a27aa9aba15708809ce247",
         intel: "712978ad154b924d78963b1befd6feea0c16b66e9c0e503be4c4efadb45be318"

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
