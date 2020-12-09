cask "beatunes" do
  version "5.2.16"
  sha256 "f84eb002a700ce401ab8b98f578d956fc7bc05711ffd538d0e357e13487a7dc2"

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
