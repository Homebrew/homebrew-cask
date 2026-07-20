cask "font-song-myung" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/songmyung/SongMyung-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Song Myung"
  homepage "https://fonts.google.com/specimen/Song+Myung"

  font "SongMyung-Regular.ttf"

  # No zap stanza required
end
