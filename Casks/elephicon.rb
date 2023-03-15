cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.3.5"
  sha256 arm:   "fef3229a400b81b993834baf22aace9286dd012737c356e36228035039004f08",
         intel: "41aec280866c38dadc26398ea965fbeeb03d3c33639221caf1a2362105e036d4"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create Apple ICNS and Microsoft ICO files from PNG"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true

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
