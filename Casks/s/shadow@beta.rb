cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10249"
  sha256 arm:   "b210f35595549ee6ba1fd348d7b1053ecb6b119e66cc125cfe50aac75af95653",
         intel: "bb423027821e9828fde8b7f9a14d450ade6e4bfdab0fb3e3faf408cf271963e3"

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
