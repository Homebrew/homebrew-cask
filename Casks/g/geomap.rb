cask "geomap" do
  arch arm: "Silicon", intel: "Intel"

  version "3.7.8"
  sha256 arm:   "adfed2be63cfd6fd70c3731abeae79aa4d97624730e18b0fa344b0f047674db5",
         intel: "c3e3e3c0c8261fa0272578cff9f258201b7c40751bc8943e7c56a2e423e319f4"

  url "https://app.geomapapp.org/MapApp/GeoMapApp-#{version}-#{arch}.dmg"
  name "GeoMapApp"
  desc "Browse, visualise and analyze geoscience data sets"
  homepage "https://www.geomapapp.org/"

  livecheck do
    url "https://www.geomapapp.org/MacInstall.html"
    regex(/href=.*?GeoMapApp[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on :macos

  app "GeoMapApp.app"

  zap trash: "~/.GMA"
end
