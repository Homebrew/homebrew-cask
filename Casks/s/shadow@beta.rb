cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10290"
  sha256 arm:   "f5e9a8eb185bdd8951dbfe6ed2f3153d763b080dd0d0a34a971b231b96a6bffa",
         intel: "662735801ab9d89fe0bfbe5ae926894498136ffc9573ac01db0bce958d4c8665"

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
