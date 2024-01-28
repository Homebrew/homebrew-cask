cask "dcp-o-matic-playlist-editor" do
  version "2.16.73"
  sha256 "84a9eed895fbd81fad265e5adf1b910c30448867d59f463b44113da7fb9b092d"

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
