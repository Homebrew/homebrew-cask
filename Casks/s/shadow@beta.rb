cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10061"
  sha256 arm:   "65ae756bf940f0a7bfc1cf6e9b8e4d2c9f56b82b81e6aa90fb0d521f40f5ce24",
         intel: "9fd06d9d2066e1a383129813d0884d26ea660bf01a05c36a8bdcdd37ddc96233"

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
