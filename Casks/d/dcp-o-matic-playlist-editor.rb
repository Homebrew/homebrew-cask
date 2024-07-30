cask "dcp-o-matic-playlist-editor" do
  version "2.16.90"
  sha256 "7abd71c8b8047455d905b379e59506b64d852a1dec8f6ce562202856a76d0573"

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
