cask "beatunes" do
  version "5.2.17"
  sha256 "2481f90e630f716b3e943984d636a0086a5fe5b9803b2feaa10361aa295aaa4d"

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
