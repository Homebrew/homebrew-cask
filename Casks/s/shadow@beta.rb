cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10283"
  sha256 arm:   "a8cf59cd5e1335ae331642acc866e2ffef5952997813dbd9d60c1e6cf53cfe52",
         intel: "1e7382483631dead5aafdf33886fbc9d38e80e2ce8da34c8e494e614d30829bf"

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
