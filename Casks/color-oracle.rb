cask "color-oracle" do
  version "1.3"
  sha256 :no_check

  url "https://colororacle.org/ColorOracleMac.zip"
  name "Color Oracle"
  homepage "https://colororacle.org/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)/)
  end

  app "Color Oracle.app"
end
