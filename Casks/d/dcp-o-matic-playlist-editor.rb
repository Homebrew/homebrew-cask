cask "dcp-o-matic-playlist-editor" do
  version "2.18.16"
  sha256 "6e9c5e1db7ec0f2c729b7e653be632e75f96c7a25fe7c86a7853c2c4b28f6563"

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
