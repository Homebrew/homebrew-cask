cask "dcp-o-matic-playlist-editor" do
  version "2.16.41"
  sha256 "10a529087e3168561f27bb87c295a8262fbdced6f63bafc930715c6bc6f8f4c7"

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
