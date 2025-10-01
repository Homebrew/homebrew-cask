cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10304"
  sha256 arm:   "992a5a4ff33417dea0317cda12588731df0a6649e4817bae13e357b50a932b41",
         intel: "fe6c8e99953d19a13f7ea51cfee21ebe5997258530bfd62b2de64edce3ebedae"

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
