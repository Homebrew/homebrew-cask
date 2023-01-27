cask "beatunes" do
  version "5.2.31"
  sha256 "6523b2788b79ecd5cdb684d8b3c8bea575863a0591e71d736f6bad37c8623559"

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
