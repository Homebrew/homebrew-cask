cask "dcp-o-matic-playlist-editor" do
  version "2.18.9"
  sha256 "36835ee539150b01b356094e4cfce68f6efdf17bf1e22d32b95b80c6881c7a7b"

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
