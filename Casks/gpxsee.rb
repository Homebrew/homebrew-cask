cask "gpxsee" do
  version "7.36"
  sha256 "3c3f1f740c44673d0012c21441065d3ea467954d430960e144c68b6d47ebc0e8"

  # sourceforge.net/gpxsee/Mac%20OS%20X/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
  name "GPXSee"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
