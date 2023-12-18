cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "d571a2848682be9269c56eabe71d4b3fe8ded4a880e978a98fae46fc16290a01",
         intel: "233ff4cb1b7dfaec500b85bc30af353fa7bf2a53a1b7f7a5aec2181d2a1f57a7"

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
