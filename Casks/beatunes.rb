cask "beatunes" do
  version "5.2.12"
  sha256 "2430538a4ad44d5cb925328840323011629e8fa502374cbf6ff75b1982c63c19"

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
