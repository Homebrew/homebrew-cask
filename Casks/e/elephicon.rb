cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.6.6"
  sha256 arm:   "4ec4389e8e5b22376833be9fc21e33df71810cf8884c4bf5f7246d8c250c5037",
         intel: "0a0dd56f6a08fdba9b7a00e467e7e1f992052d2df577a76bc6c92d4525d9a9af"

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
