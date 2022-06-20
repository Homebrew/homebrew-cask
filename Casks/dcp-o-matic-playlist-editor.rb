cask "dcp-o-matic-playlist-editor" do
  version "2.16.14"
  sha256 "9ff0a9a3851c575ec6c3511bf8ba27c0c767fc3bd55d3297c258291863abf732"

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
