cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "1ac8699783bcda8094c31e72988821264ac305d808b203784aaa04bc448ca21c",
         intel: "211902102324a27a231719749caaa4e9fd21faf2307a564c1756c1eb9cee784a"

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
