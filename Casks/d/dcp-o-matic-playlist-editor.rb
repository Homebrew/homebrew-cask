cask "dcp-o-matic-playlist-editor" do
  version "2.16.94"
  sha256 "c0fdc6b5c843aca8b6d0c8fcdd4956e221e3fe101b5a5156ee16de0512872993"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
