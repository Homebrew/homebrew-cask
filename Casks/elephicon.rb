cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "1.10.1"
  sha256 arm:   "835172d1ba80ea306f9ccadfddbf87390e19435e1e4afe057994f085a91bfc34",
         intel: "30d5e241500e98a77230f20f3e7f7751c0c3915a4244acbb24617d17256e91fd"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.zip"
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
