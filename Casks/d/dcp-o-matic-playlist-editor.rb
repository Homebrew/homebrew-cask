cask "dcp-o-matic-playlist-editor" do
  version "2.16.69"
  sha256 "81b4e7c7dbd2199af0a2ab3c0515064a58f0295014ea8922153ce3e410a1dd19"

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
