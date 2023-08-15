cask "dcp-o-matic-playlist-editor" do
  version "2.16.61"
  sha256 "a3401474e14b48a04fbac1748ea062ac88a49492c5c938db71ebbeb81c8b82a5"

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
