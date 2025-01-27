cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10171"
  sha256 arm:   "e8bfd176e6e162865f1cbee17eded21656d6f273bfafdaf167389fb474b64269",
         intel: "0b4ed757fd20e835a17e0c9fe476db8b32c442a601ccb7de13e8ae7515fc434e"

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
