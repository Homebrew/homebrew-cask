cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10390"
  sha256 arm:   "d438836f7ac37b2837bc0d2d0565556d352562255026a990c569b29f54fdee90",
         intel: "d17314d524d96e6a184a192a18e65db76bd792576aa7b86a7c85fb89be8d1b42"

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
