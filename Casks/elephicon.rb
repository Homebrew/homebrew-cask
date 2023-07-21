cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.4"
  sha256 arm:   "535180f654371f9252e850e1a9d44f30c21e6b8af665eb047d47aa9e8ae96790",
         intel: "b4488557d1e1eb996b1b817a5f8434dc936fb898d4df32e540d7f5017faa6706"

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
