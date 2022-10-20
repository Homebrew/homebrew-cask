cask "dcp-o-matic-playlist-editor" do
  version "2.16.31"
  sha256 "a32594f239e01562b8690cb0018c73ab5d766a120b50e92bd3dcd25de289b99d"

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
