cask "color-oracle" do
  version "1.3"
  sha256 :no_check

  url "https://colororacle.org/ColorOracleMac.zip"
  name "Color Oracle"
  homepage "https://colororacle.org/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  app "Color Oracle.app"

  uninstall login_item: "Color Oracle"

  zap trash: "~/Library/Preferences/ch.ethz.ika.colororacle.plist"

  caveats do
    requires_rosetta
  end
end
