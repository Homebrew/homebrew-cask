cask "lyric-fever" do
  version "3.1"
  sha256 "ae7b92eb9da299eb691b320c3d853d1ed3fe15fa778da3cbdf0624444cd157c2"

  url "https://github.com/aviwad/LyricFever/releases/download/v#{version.csv.second || version.csv.first}/Lyric.Fever.#{version.csv.first}.dmg",
      verified: "github.com/aviwad/LyricFever/releases/download/"
  name "Lyric Fever"
  desc "Lyrics for Apple Music and Spotify"
  homepage "https://lyricfever.com/"

  livecheck do
    url "https://aviwad.github.io/SpotifyLyricsInMenubar/appcast.xml"
    regex(%r{/v?(\d+(?:\.\d+)*[^/]*)/Lyric[._-]Fever[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      (match[2] == match[1]) ? match[2] : "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Lyric Fever.app"

  zap trash: "~/Library/Containers/Lyric Fever"
end
