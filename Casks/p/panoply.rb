cask "panoply" do
  arch arm: "arm64-"

  version "5.10.2"
  sha256 arm:   "e06ca50f8bd9db5bcfb4867dd1a9b408ada4bd2828ff55aececfa2c87c7172e1",
         intel: "500f1b99ce79e5ea795f7a54e5b131e02bfa0d54912659f97f4cbe531acaaa31"

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
