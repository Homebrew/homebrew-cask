cask "beatunes" do
  version "5.2.36"
  sha256 "c0420fec7f20decb52a27909bd0c27a572a735624b5a2a4e9a55f67f39db7b31"

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
