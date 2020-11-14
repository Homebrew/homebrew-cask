cask "beatunes" do
  version "5.2.14"
  sha256 "b28dacf06a5855b333213f4deec3bfc6af34d804059cf41e2759134ed08cb96c"

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
