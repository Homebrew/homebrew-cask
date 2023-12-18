cask "dcp-o-matic-playlist-editor" do
  version "2.16.70"
  sha256 "bdea5ed8617d2d53b2d9a0a216dd980be9f35a8ecbfc63f68ebcb6d823fac36f"

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
