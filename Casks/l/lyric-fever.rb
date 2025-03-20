cask "lyric-fever" do
  version "2.1"
  sha256 "6d62ba9f3b7e22113e21aa8fc5be84dd1c7f98aee3d1cd8a3b3f41ddcdb9a04b"

  url "https://github.com/aviwad/LyricFever/releases/download/v#{version}/Lyric.Fever.#{version}.dmg",
      verified: "github.com/aviwad/LyricFever/releases/download/"
  name "Lyric Fever"
  desc "Lyrics for Apple Music and Spotify"
  homepage "https://lyricfever.com/"

  livecheck do
    url "https://aviwad.github.io/SpotifyLyricsInMenubar/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Lyric Fever.app"

  zap trash: "~/Library/Containers/Lyric Fever"
end
