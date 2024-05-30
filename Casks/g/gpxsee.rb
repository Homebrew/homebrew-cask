cask "gpxsee" do
  version "13.21"
  sha256 "bc6bc3a1ba6e64fd5a9479f77f91c11cb5933eb69a876dbbec313f71d0400a52"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  livecheck do
    url "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
    regex(%r{url=.*?/GPXSee[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "GPXSee.app"

  zap trash: [
    "~/Library/Caches/GPXSee",
    "~/Library/Preferences/com.gpxsee.GPXSee.plist",
  ]

  caveats do
    requires_rosetta
  end
end
