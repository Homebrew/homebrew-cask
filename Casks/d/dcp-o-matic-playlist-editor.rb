cask "dcp-o-matic-playlist-editor" do
  version "2.16.78"
  sha256 "71720a0a7216ba0eb5c7df8986847835cf793644676cb5c3ee4d7782f08e94b1"

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
