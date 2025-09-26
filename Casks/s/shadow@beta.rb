cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10301"
  sha256 arm:   "6e51beab2eca6ef604f6f84ca4bda7e70daca75f88ae5746310c10071f852303",
         intel: "31acc938f829af695690760bc9cdd910932cc01eaecdcefac608579562c562e4"

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
