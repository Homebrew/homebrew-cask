cask "gpxsee" do
  version "7.35"
  sha256 "3bdb7158e0b9f46f9a6c148fe32136664bdab0c094ec73cf66b973c5977b641b"

  # sourceforge.net/gpxsee/Mac%20OS%20X/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
  name "GPXSee"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
