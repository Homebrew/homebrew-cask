cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10476"
  sha256 arm:   "39c4fd7f05de8d4e42e23e13b4715b08ea2bedff3c118469e5b6873ff961f8e0",
         intel: "319ce090e5c89fc5be3ead52661900791cf0300a6142258c7a40bca8e01de8a6"

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
