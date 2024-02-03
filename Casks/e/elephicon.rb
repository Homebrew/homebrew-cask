cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.8.5"
  sha256 arm:   "74256cf6fe07df15e70b95454e0770f00c9743c97fb43915715408e50decf8e7",
         intel: "24ad8eafa603fb1c2d1048db310a03c1ebf96ca4a49773224eb6b3a604a9e48a"

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
