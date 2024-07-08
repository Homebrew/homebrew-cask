cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10075"
  sha256 arm:   "ef5529d04ae7aa7d0c0afdd8408c0d1bc87a6c526fb5be597d8c2ef72a3faeea",
         intel: "19afab8a762c9250fc4c80471a2a6f03009524fc2d52c14e38f60e9358c81b54"

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
