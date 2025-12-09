cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.9.5"
  sha256 arm:   "e3de293eac94db2002dd3f463a0537c6e5ec8b8ef3b3de47d33f6f8097213715",
         intel: "63aa67268ee0cf40690f9a287d22877f629fb7bac3246ee439a263ea9d306781"

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
