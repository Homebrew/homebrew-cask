cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "b0bc4688ddd870afba4f1983ff8988c0f1a7af43a9d8f77a51c2d376a00c366a",
         intel: "9547dbfd634a739a17c34be8309d2dd5991dda338d817798054a7a20ffb06996"

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
