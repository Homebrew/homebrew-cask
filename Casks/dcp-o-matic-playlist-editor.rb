cask "dcp-o-matic-playlist-editor" do
  version "2.16.28"
  sha256 "c2a31a9eb500fcd393026d7e1a768872d1e6a037c3cb06c6545ebb698a25ac6e"

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
