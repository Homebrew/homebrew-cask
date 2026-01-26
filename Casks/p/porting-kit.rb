cask "porting-kit" do
  arch arm: "-arm64"

  version "6.7.0"
  sha256 arm:   "7e33b70e326c7e5a99c531b65b678b605c44aaa107f51688777ad5dd9e5fbf5a",
         intel: "2f19f92a26d464815e10c41e2a4bda5a506ad612415bf0f0c824e5fcec36b0ab"

  url "https://github.com/vitor251093/porting-kit-releases/releases/download/v#{version}/Porting.Kit-#{version}#{arch}.dmg",
      verified: "github.com/vitor251093/porting-kit-releases/"
  name "Porting Kit"
  desc "Install games and apps compiled for Microsoft Windows"
  homepage "https://portingkit.com/"

  auto_updates true

  app "Porting Kit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.paulthetall.portingkit.sfl*",
    "~/Library/Application Support/portingkit",
    "~/Library/Preferences/com.paulthetall.portingkit.plist",
    "~/Library/Saved Application State/com.paulthetall.portingkit.savedState",
  ]
end
