cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "a1398056c26fe658f3742da4f7176cb2642d8992854a4a70192278941cb38af8",
         intel: "6d35ec475555b7041c7860db35e28620b62cb227db070589f13c10788e53a0b6"

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
