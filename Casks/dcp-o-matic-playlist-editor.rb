cask "dcp-o-matic-playlist-editor" do
  version "2.16.42"
  sha256 "1c71bab2f8b393b317ad3a060fb762c6b98be73034a684fabe647420d8beed83"

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
