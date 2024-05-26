cask "bias-fx" do
  version "2.7.0.6600"
  sha256 "f79a9286a5cdf9d1fee30d55aceac37f330f54b2af2d51b2b361b966e666c795"

  url "https://dlcf.positivegrid.com/BIAS_FX_#{version.major}_Mac_Standalone_v#{version.dots_to_underscores}.dmg"
  name "Positive Grid Bias FX 2"
  desc "Guitar amp and effects processing software"
  homepage "https://www.positivegrid.com/products/bias-fx-2"

  livecheck do
    url "https://dlcf.positivegrid.com/biasFX#{version.major}Appcast.xml"
    strategy :sparkle do |item|
      item.version.delete_suffix(".Release")
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "BIAS_FX_#{version.major}_App.pkg"

  uninstall pkgutil: "com.positivegrid.pkg.BIASFX#{version.major}App"

  zap trash: [
    "~/Library/Application Support/PositiveGrid/BIAS_FX#{version.major}.settings",
    "~/Library/Caches/com.positivegrid.BiasFx#{version.major}Standalone",
    "~/Library/Logs/PositiveGrid/BIAS_FX#{version.major}",
    "~/Library/Preferences/com.positivegrid.BiasFx#{version.major}Standalone.plist",
  ]
end
