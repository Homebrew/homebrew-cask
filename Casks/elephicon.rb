cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "87d99a6d9fefec262a4770aaa999908720e26a2a55ced482ef301fb0929ebeaa",
         intel: "c16d894e13c8365402c30bc4b3a0072d53804403e36504d93f14142b71f7d0cf"

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
