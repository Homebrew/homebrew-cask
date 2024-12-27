cask "dcp-o-matic-playlist-editor" do
  version "2.18.1"
  sha256 "c3242aeddf09340b5c82f58e7d18b39c569bcba949b836fa57ac9118a0384a7c"

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
