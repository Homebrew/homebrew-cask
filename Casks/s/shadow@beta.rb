cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10169"
  sha256 arm:   "f766a6de8d09a6e364ddbd8835c9a1948912739b5401ec5c1939195c4f672479",
         intel: "4062413a0a7b35919136948ead8a882970dc46900a7270b263456bd18947b7cb"

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
