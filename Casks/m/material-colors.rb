cask "material-colors" do
  version "2.0.3"
  sha256 "601465d533d93399c89fa2a135dba8d936cca239ff601d20195c44244a64053a"

  url "https://github.com/romannurik/MaterialColorsApp/releases/download/v#{version}/MaterialColors-#{version}.zip"
  name "Material Colors for Mac"
  homepage "https://github.com/romannurik/MaterialColorsApp"

  app "Material Colors.app"

  zap trash: [
    "~/Library/Application Support/Material Colors",
    "~/Library/Application Support/net.nurik.roman.materialcolors.ShipIt",
    "~/Library/Caches/Material Colors",
    "~/Library/Caches/net.nurik.roman.materialcolors",
    "~/Library/Preferences/net.nurik.roman.materialcolors.plist",
  ]

  caveats do
    requires_rosetta
  end
end
