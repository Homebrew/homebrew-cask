cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.7.6"
  sha256 arm:   "d14e903abd589e1588890ee2874b0b72c3dee82c36f85df7359a96981d828f47",
         intel: "0796e596ddedc3abe1dafc209ee7d0b934fe4ad14b05b3f9140ada6552aec0e7"

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
