cask "beatunes" do
  version "5.2.35"
  sha256 "0fda038e3987cbd2570fd7b1f85e086ea79a3dc3d3729224a384aa62da288d1a"

  url "https://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name "beaTunes"
  desc "Analyze, inspect, and play songs"
  homepage "https://www.beatunes.com/"

  livecheck do
    url "https://www.beatunes.com/en/beatunes-download.html"
    regex(/href=.*?beaTunes[._-]?v?(\d+(?:-\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "beaTunes#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/beaTunes",
    "~/Library/Caches/beaTunes",
    "~/Library/Logs/beaTunes",
    "~/Library/Preferences/com.tagtraum.beatunes.plist",
  ]

  caveats do
    requires_rosetta
  end
end
