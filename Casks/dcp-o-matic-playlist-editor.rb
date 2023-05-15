cask "dcp-o-matic-playlist-editor" do
  version "2.16.56"
  sha256 "957effe499f98fca0ce3116cfc88f4f72b0f9d09556bba209d5d3ed479023b0e"

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
