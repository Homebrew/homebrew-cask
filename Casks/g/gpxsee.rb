cask "gpxsee" do
  version "13.47"
  sha256 "2e0d5ce37511e7d0d92a0566c2e463a9d0329f908477f5e2459eb1e408344cd5"

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
