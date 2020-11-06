cask "material-colors" do
  version "2.0.1"
  sha256 "fbe1791d7193ad9f7d235b8daf4304fa391b7543bb6591b393519211499aebfa"

  url "https://github.com/romannurik/MaterialColorsApp/releases/download/v#{version}/MaterialColors-#{version}.zip"
  appcast "https://github.com/romannurik/MaterialColorsApp/releases.atom"
  name "Material Colors for Mac"
  homepage "https://github.com/romannurik/MaterialColorsApp"

  app "Material Colors.app"

  zap trash: [
    "~/Library/Application Support/net.nurik.roman.materialcolors.ShipIt",
    "~/Library/Application Support/Material Colors",
    "~/Library/Caches/Material Colors",
    "~/Library/Caches/net.nurik.roman.materialcolors",
    "~/Library/Preferences/net.nurik.roman.materialcolors.plist",
  ]
end
