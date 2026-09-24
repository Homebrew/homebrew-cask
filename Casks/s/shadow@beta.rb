cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10480"
  sha256 arm:   "9bbb1cbf94a10016d162eaaf848e0be8f40fcaee9041c35aecdb3c34173f4dca",
         intel: "de1db73d3f5bb98925d2ff8f1658699ed6b809b35bd095b79f6a4ce9223fa0b5"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
