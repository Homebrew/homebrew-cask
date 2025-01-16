cask "dcp-o-matic-playlist-editor" do
  version "2.18.5"
  sha256 "1d7d18ea0d03d616e484c2ede24bf7ba0f39119e149ff9a4b428cc5cf8604afd"

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
