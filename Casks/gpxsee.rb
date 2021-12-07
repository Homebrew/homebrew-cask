cask "gpxsee" do
  version "9.12"
  sha256 "ca7877f90fdc4361d5247b35d3318d7c177cc866dc70f2bfff403b5b4c76f632"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
