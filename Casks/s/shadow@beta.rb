cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10273"
  sha256 arm:   "b14a6ea87a35b641a06d6d6696e04255b143d28a0ea3ee8828395c15f54e58cf",
         intel: "6037647e55eae53b07d8a59a7c64c8d904d1bb2ada3b71a0980b2339ffaa9742"

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
