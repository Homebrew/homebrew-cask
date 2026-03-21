cask "font-song-myung" do
  version "1.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/songmyung/SongMyung-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Song Myung"
  homepage "https://fonts.google.com/specimen/Song+Myung"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Song Myung",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SongMyung-Regular.ttf"

  # No zap stanza required
end
