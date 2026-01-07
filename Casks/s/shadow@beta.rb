cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10353"
  sha256 arm:   "251a822338bc7e0c1b4a0d900c3521853b9ac5d534a17640b26feabedcc80130",
         intel: "0dc46542edae1965d67b7fa707722db5a0df16e9a116840fd102609b2bb4e791"

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
