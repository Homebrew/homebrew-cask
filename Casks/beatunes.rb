cask "beatunes" do
  version "5.2.13"
  sha256 "d80ac00bf97301bf7611fa3e792128c22e301893e9f15c16d3e2613094c4cc90"

  url "http://coxy.beatunes.com/download/beaTunes-#{version.dots_to_hyphens}.dmg"
  appcast "https://www.beatunes.com/en/beatunes-download.html",
          must_contain: version.dots_to_hyphens
  name "beaTunes"
  homepage "https://www.beatunes.com/"

  depends_on macos: ">= :sierra"

  app "beaTunes#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/beaTunes",
    "~/Library/Caches/beaTunes",
    "~/Library/Logs/beaTunes",
    "~/Library/Preferences/com.tagtraum.beatunes.plist",
  ]
end
