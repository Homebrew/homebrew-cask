cask "beatunes" do
  version "5.2.29"
  sha256 "327226d005230e5a87da5d677e448e1a93c82b12a5165e027abf0f13edcee418"

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
