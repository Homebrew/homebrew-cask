cask "dcp-o-matic-playlist-editor" do
  version "2.16.15"
  sha256 "57bc11b7567fc78eb6a92de31d790bcbce62a03aa327b12cdce3326351bc1a1f"

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
