cask "gpxsee" do
  version "7.33"
  sha256 "f07222c86a3c94e9521ffc6873baf8ee76550cfc71f3c7dd2a58fdb9d42bb69c"

  # sourceforge.net/gpxsee/Mac%20OS%20X/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
  name "GPXSee"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
