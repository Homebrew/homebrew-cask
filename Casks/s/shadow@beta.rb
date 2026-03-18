cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10389"
  sha256 arm:   "2359847a23ada2ee7b6ed6c68a60d485b8689e3ec83a6ee123e407d2a6d59dca",
         intel: "61b04a736e30772e87a47db02d44844e0add9482437d881abfa1736cb6e75230"

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
