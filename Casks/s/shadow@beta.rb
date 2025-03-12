cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10188"
  sha256 arm:   "eb28f6f5f15321bce7d40985b1a93a5dcf339b3b7e87e301ff4f86ecd4160d52",
         intel: "26865fb3c1ff8ceb945febd6773d05943ce40a2cc30674c51fa6a8eac23670e4"

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
