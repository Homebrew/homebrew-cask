cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10247"
  sha256 arm:   "7a9cb62135cc12217318d1b21ae7b85c38944494628fe2e478da66a6b4c9ef68",
         intel: "22c5d177ca1be9a2e8a234e924fbb66c5872eb1a175816a7d29e6734508ae2d8"

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
