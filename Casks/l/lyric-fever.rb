cask "lyric-fever" do
  version "2.2"
  sha256 "1631c25f3a7bcd965e41d66208fa89b60452eb33a3343c7ffe1fe46df7430cca"

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
