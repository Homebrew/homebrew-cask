cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.7.4"
  sha256 arm:   "b4d9e0edb8f2562ee0151d553bab6f1245e36e8de65f190e31cbbb51ac1b679b",
         intel: "d211ba920b9d3076600b0a3cc305b3595eec069761e245a9343a3a2b94cdbbfd"

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
