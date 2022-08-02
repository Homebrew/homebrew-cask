cask "dcp-o-matic-playlist-editor" do
  version "2.16.18"
  sha256 "800bff6fee04ac79843d95bec332a0b5fd6293ecfa7ebefc1e0d8df03fe8f636"

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
