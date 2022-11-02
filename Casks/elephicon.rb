cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.1.5"
  sha256 arm:   "ff19e8c1299784cd17bd2adf0d4376d84548829e8fb3130b007e70b383274b41",
         intel: "9f7db3cc45311ad381eb16cebb02c71ce6334709cd6649ed111a715c2160e60c"

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
