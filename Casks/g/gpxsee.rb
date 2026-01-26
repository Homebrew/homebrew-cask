cask "gpxsee" do
  version "15.9"
  sha256 "ced4308e9094c3e356c81a87e8526ee8ba1af8e85875aa194dcb0a4a58afaf20"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  livecheck do
    url "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
    regex(%r{url=.*?/GPXSee[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "GPXSee.app"

  zap trash: [
    "~/Library/Caches/GPXSee",
    "~/Library/Preferences/com.gpxsee.GPXSee.plist",
  ]
end
