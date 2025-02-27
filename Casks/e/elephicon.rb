cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.3.4"
  sha256 arm:   "f5a0beafc399438c4540d3bca24be4b8ecf78c774b90d93f81a7d42dde70a3a9",
         intel: "15fdbbf52b5b84ad3b4e460417e2fa5485853cf5f42b40ec8bfca62526cfce94"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Elephicon.app"

  zap trash: [
    "~/Library/Application Support/Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon.ShipIt",
    "~/Library/Logs/Elephicon",
    "~/Library/Preferences/jp.wassabie64.Elephicon.plist",
    "~/Library/Saved Application State/jp.wassabie64.Elephicon.savedState",
  ]
end
