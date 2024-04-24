cask "dcp-o-matic-playlist-editor" do
  version "2.16.81"
  sha256 "01a60fb77a1f2d90aa90b6c656603c54615c82fbc0921ebc245e2a093b398054"

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
