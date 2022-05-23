cask "dcp-o-matic-playlist-editor" do
  version "2.16.10"
  sha256 "fe9a5df511d5b3415de506b51a4ead3be1adad8aebc7c993385a94ba20a34b98"

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
