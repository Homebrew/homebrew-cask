cask "dcp-o-matic-playlist-editor" do
  version "2.16.30"
  sha256 "e9e161dcda519c0220151d5a71597875bbc69b7f023acd0c18d3e58fe1f317f9"

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
