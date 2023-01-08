cask "dcp-o-matic-playlist-editor" do
  version "2.16.40"
  sha256 "1f1aac51186148bd22575b7f44bd6efed2108d3a91e2683cdc675cbfbad9ab92"

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
