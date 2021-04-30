cask "beatunes" do
  version "5.2.21"
  sha256 "6d4efb8314815d5bed0e1a4ffba3061a23475f7b43a12998d9fa2c6cdf89375f"

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
