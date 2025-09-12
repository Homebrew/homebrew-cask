cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.8.1"
  sha256 arm:   "f1fa0205a95fcb605b0d37c4aa54c9431651e9462eb476482dc0d8e7895f2e21",
         intel: "5eca045a13196df22944644eb56bd71add6f796821f78dbb295a5fb29f4837b0"

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
