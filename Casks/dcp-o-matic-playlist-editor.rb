cask "dcp-o-matic-playlist-editor" do
  version "2.16.29"
  sha256 "2f342684ad84f35c9582fadb9e3178ac567223d80045bcff6ede6ab500ad1fc2"

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
