cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10118"
  sha256 arm:   "6af0010a89abb1e3701b651382dfc873a830adfe36393dd010fdf23a2f2eedf7",
         intel: "2a0e2d106107affd37c374fce5b15c88044d65ade683ab8010cae1e52e84f672"

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
