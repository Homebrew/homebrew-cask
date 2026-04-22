cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10406"
  sha256 arm:   "909287d8bcf8dd035edbf61ad8d3c1610aa5472ef4661de680fb609cc6cae77b",
         intel: "9a9bc78d746363446d67702e44998a63d8b7fac0818d663555a1bed99549bb15"

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
