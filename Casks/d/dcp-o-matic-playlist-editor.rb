cask "dcp-o-matic-playlist-editor" do
  version "2.16.67"
  sha256 "1a0030a2ff5916a2b7dac8a81301db8cc0bd9731beea0834d18c5e066d8b0de2"

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
