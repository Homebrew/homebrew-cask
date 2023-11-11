cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.7.5"
  sha256 arm:   "ffed4e120623b09a0e27bc3eddcd8bfd7f0aff147cbb877442af345c4090376d",
         intel: "b38cd1599ce04115c5df9ddc55fd8c7c39dbd202d710ee54d89ebd75335ec10c"

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
