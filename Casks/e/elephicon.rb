cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.3.3"
  sha256 arm:   "a976a156d09fef3b7b04ce9f0e6e986cead56de7b1e244bb4b695ec92f861be2",
         intel: "6f9c9b3cba10e449d5227b464069496fec18e01d4317315c88115d1d8828a26e"

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
