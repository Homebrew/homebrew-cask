cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10410"
  sha256 arm:   "e33dbed908f9d4e9f0a3de0451ea5b8c2d9ef2eab97493c24234bdccb84b55df",
         intel: "a6538a61068a5395c262506959649d25d80029adda0a25bfa188a6909d918e04"

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
