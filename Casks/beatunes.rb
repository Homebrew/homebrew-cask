cask "beatunes" do
  version "5.2.22"
  sha256 "2265f128d79eafaf598d0eb9c7e1a82ed8226150d6dc4d4107052c3fe3268f0b"

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
