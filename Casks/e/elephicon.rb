cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.7.5"
  sha256 arm:   "bfc54af09b3b235e10a4f7e6c9303cc480bfd1a1c7158b171c00cf3bd19dca99",
         intel: "4553411a0b2ea136ce2fac363745761a8aa698042421e5708c247307fcbff010"

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
