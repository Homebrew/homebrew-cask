cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "1.10.6"
  sha256 arm:   "24739c1b372847900b411bd19e55ee8f3e55adbce068ae9a27f8af59aeee7744",
         intel: "0c3b5e8bfb002518d65d78508a529168b8e71cab8b9eaf1d25256ec7f0714c43"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create Apple ICNS and Microsoft ICO files from PNG"
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
