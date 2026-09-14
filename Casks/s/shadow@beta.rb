cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10472"
  sha256 arm:   "4ec8596696ca626f90635743a86ab9203fc83075d362025d8dedc1842f4a961e",
         intel: "3d9ea470ab85c749c295158dc1b9ac8537a2439809ea5214e4ab625b72e9145e"

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
