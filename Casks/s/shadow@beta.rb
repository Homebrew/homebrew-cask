cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10347"
  sha256 arm:   "e44a7ef2e5d7884efe71dd8d51aa111ff00596219ebb32a939fa1f9914056bc3",
         intel: "64fa3ecbce423e5238ee87c7c201a3ab61c59776cbfe8ea8de7f23e5226d169c"

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
