cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.5.3"
  sha256 arm:   "4c7b5c688135a0caa7f0540c9457b520dff0cff73f6d22ae8c7620a32c3c1295",
         intel: "e71f7b3c41f39aa64f744a784e2fa5ae07df72fce125e7d498a807a842f2f470"

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
