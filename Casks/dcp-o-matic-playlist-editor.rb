cask "dcp-o-matic-playlist-editor" do
  version "2.16.47"
  sha256 "829e48e1e841fac38d7c4ddf9e6ba89b81cb990fe502e78c2c7f380040faf458"

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
