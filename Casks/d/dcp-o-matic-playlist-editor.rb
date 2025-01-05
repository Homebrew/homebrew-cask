cask "dcp-o-matic-playlist-editor" do
  version "2.18.2"
  sha256 "be8ce9201360a4f5bcf6d62323f4c58a7624a410710866b416107107dc0039c8"

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
