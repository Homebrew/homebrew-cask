cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10232"
  sha256 arm:   "41636b606a31b7b10f56518253b31d424be0f92009f277f5c925cccb687b7d49",
         intel: "c3a2eddb87d3c2e9525186e3b47631782972c44b4cee4d709007de37b4aab736"

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
