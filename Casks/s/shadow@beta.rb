cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10000"
  sha256 arm:   "c481203d9a3743280325caf6ce5dd9391d6e0da71870bc26b948aab6609095aa",
         intel: "ebe7811e42dae5d3bc27b39852f2a4ae594afe6a8df1595ba2543c2016de3016"

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
