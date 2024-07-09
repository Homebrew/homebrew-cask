cask "dcp-o-matic-playlist-editor" do
  version "2.16.88"
  sha256 "1a72e20a76e73c6e4906d1245052e2a480a0c7ea28008460151ca39dacbffe59"

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
