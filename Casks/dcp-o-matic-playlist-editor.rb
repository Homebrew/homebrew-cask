cask "dcp-o-matic-playlist-editor" do
  version "2.16.32"
  sha256 "eb8e702d26df3b09f56b1143a89e44f29487cd4a330e31d3fb074256d7f9b391"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
