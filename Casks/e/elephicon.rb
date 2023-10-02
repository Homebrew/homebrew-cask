cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.6.5"
  sha256 arm:   "56e55f2a4a35b7cd7495d3c323f9817a0c92581a0edee550d0a3549c2f4f5f33",
         intel: "5d20cf2371d6faaae3d787b65a538f2804376ea1ebfd6037274058c6948a70be"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
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
