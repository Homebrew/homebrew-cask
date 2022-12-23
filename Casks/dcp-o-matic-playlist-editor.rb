cask "dcp-o-matic-playlist-editor" do
  version "2.16.36"
  sha256 "29343732b33d9d1aeffc3cb1be9c940376ece040f65fd7f0af076afee8fbba7f"

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
