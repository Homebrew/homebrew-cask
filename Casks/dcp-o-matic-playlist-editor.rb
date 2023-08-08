cask "dcp-o-matic-playlist-editor" do
  version "2.16.60"
  sha256 "eedbfb8c58cbf2d1956a75452ae67600b49ef31aff1753979d71c408d882b5ab"

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
