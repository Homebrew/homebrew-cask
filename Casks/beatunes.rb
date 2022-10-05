cask "beatunes" do
  version "5.2.30"
  sha256 "cc81ba7f42ddf1c50ffa39c2c4c1bfa180f43837b7ebc950ae3cd33c32bf67d9"

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
