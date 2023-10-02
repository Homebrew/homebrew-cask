cask "dcp-o-matic-playlist-editor" do
  version "2.16.65"
  sha256 "ca4fcea8991c3b83783da762c83f14a36d31878553786680a0f5fe3a17efdc8d"

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
