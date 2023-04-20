cask "dcp-o-matic-playlist-editor" do
  version "2.16.50"
  sha256 "f98570b00db2c9224c1b62c924f6663cd301f4c009dc832e7129214a1d17c7a3"

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
