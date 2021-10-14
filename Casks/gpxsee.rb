cask "gpxsee" do
  version "9.7"
  sha256 "e2b3f71cf027f35bcf198c094963ba72f64a3db904c1dccab9c4d0b840c129a7"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
