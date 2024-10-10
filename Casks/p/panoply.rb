cask "panoply" do
  arch arm: "arm64-"

  version "5.5.3"
  sha256 arm:   "5b0a52354bdd64cf06d3c4ecd4b25dd4ff08d65010e268b7c859b3e0b281ba07",
         intel: "562fcf433341cc02efa9d80b5f35b3eefff9f258d7b52e3cf65b75f61935b462"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{arch}#{version}.dmg"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  livecheck do
    url "https://www.giss.nasa.gov/tools/panoply/download/"
    regex(/href=.*?PanoplyMacOS[._-]#{arch}v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Panoply.app"

  zap trash: [
    "~/Library/Caches/gov.nasa.giss.panoply",
    "~/Library/Preferences/gov.nasa.giss.panoply.plist",
    "~/Library/Preferences/gov.nasa.giss.Panoply.prefs.xml",
  ]

  caveats do
    depends_on_java "11+"
  end
end
