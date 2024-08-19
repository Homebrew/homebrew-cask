cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "6b8a2a76d704486db120b0a2f6de82713e29aa00de2261fc25ae9f18fa8a1736",
         intel: "605d6759121a5bec13c82bd0d53ae1f962f88f083f8bfd4f43142816c80ec41f"

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
