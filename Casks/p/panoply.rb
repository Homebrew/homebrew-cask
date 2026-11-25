cask "panoply" do
  arch arm: "arm64-"

  version "5.10.3"
  sha256 arm:   "45c4bdb4f93f7bdda0dc6f1d3157dc4a440be1db8c2ea92d53445c47072c3c12",
         intel: "72c421cbf61b8c97bae5a09a69954f7da0cf1d30832f012d31a3cee047c7bef9"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{arch}#{version}.dmg"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  livecheck do
    url "https://www.giss.nasa.gov/tools/panoply/download/"
    regex(/href=.*?PanoplyMacOS[._-]#{arch}v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Panoply.app"

  uninstall quit: "gov.nasa.giss.panoply"

  zap trash: [
    "~/Library/Caches/gov.nasa.giss.panoply",
    "~/Library/Preferences/gov.nasa.giss.panoply.plist",
    "~/Library/Preferences/gov.nasa.giss.Panoply.prefs.xml",
  ]

  caveats do
    depends_on_java "11+"
  end
end
