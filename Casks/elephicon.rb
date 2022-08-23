cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "6f5cf8b7d9cf167c9f15bcbd74a1fba7b1cf0647d87169ad7252b4a94d547e26",
         intel: "7027e06b185dfda939419dc9438014370c4b23c7828ef2576dc3c67537d714c8"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.zip"
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
