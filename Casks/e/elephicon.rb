cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "a920547f5ab8dfe6c9b349bf16ae8f596a92e9ab7c5ae6f5f0983294f8ff1137",
         intel: "ef29d982a6fc93c5b275d531b49be851ee226808a53132eee67afeacdb091a2e"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :monterey"

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
