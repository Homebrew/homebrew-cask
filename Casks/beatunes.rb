cask "beatunes" do
  version "5.2.20"
  sha256 "afddd19389c98230ce839a00cf8e0567a3890e701021013737b4c63ebf139571"

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name "beaTunes"
  desc "Analyze, inspect, and play songs"
  homepage "https://www.beatunes.com/"

  livecheck do
    url "https://www.beatunes.com/en/beatunes-download.html"
    strategy :page_match do |page|
      v = page[/href=.*?beaTunes-(\d+(?:-\d+)*)\.dmg/i, 1]
      v.tr("-", ".")
    end
  end

  depends_on macos: ">= :sierra"

  app "beaTunes#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/beaTunes",
    "~/Library/Caches/beaTunes",
    "~/Library/Logs/beaTunes",
    "~/Library/Preferences/com.tagtraum.beatunes.plist",
  ]
end
