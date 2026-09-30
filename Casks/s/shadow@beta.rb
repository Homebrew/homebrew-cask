cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10482"
  sha256 arm:   "34e729655e29e6fdaea03370097a20a2b3f6b27492cee6d8849592489755a622",
         intel: "0bdc59e4f023c269b6bba31e7dde83c22f205037222412c622a63394aee68468"

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
