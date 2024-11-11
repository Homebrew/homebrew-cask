cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10131"
  sha256 arm:   "fe209b56359fbbe733d9737cbd35db08718d1a0a61fe8f1e6658af07acf7fe54",
         intel: "cee6b55b98750d24d36fc8fe7a15bab80f3259b78b473db006dd81ea7ba11430"

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
