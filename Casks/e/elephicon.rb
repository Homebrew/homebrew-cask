cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.9.4"
  sha256 arm:   "50fb245cded1cdf6882220bf78b57fad53dd76ea6a1a0ceda9a01dbc7afe386a",
         intel: "5315523eded328315e080ddfbe25ad3b6a1ffa70650db541eda45c33bfe2565f"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :monterey"

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
