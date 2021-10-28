cask "gpxsee" do
  version "9.10"
  sha256 "9cae4cf33e62afc77b842932ecfdad2e6f8bf42c6d802145e6732e3c63dd9a55"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
