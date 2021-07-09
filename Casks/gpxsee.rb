cask "gpxsee" do
  version "9.2"
  sha256 "f0df9fc513b543d04fd5464618b9285a3af09df42f150cc3ef07845523269818"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyze"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
