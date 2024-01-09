cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.8.2"
  sha256 arm:   "b388f8efdd8af7c533bdd608ffa3344fd9a86274b2163d41dc823b589e1d0311",
         intel: "87000785d9e079c306ed3164916c8413256eb2bd72d1f93e55528242f63c695d"

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
