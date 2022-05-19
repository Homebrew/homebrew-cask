cask "beatunes" do
  version "5.2.28"
  sha256 "10be5e73c886b45eda6b9cf95ee618be2ce9bbc5907c43c3d0002a7dc538d95c"

  url "https://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  name "beaTunes"
  desc "Analyze, inspect, and play songs"
  homepage "https://www.beatunes.com/"

  livecheck do
    url "https://www.beatunes.com/en/beatunes-download.html"
    strategy :page_match do |page|
      match = page[/href=.*?beaTunes[._-]?v?(\d+(?:-\d+)+)\.dmg/i, 1]
      next if match.blank?

      match.tr("-", ".")
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
end
