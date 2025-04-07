cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10209"
  sha256 arm:   "c1e055df22533cf5d685b35e3ad9c7b66244a5a618fbbe1173049a0c231196f4",
         intel: "cbc0e89809f6ad2c62f29d55ff222e33e4a054b7954735f73392c0e7ae222f4f"

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
