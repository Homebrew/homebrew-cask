cask "dcp-o-matic-playlist-editor" do
  version "2.18.4"
  sha256 "5120618c9ecba5faeb7a2dbfcbbd168be808a683c8d60b1d09eb38b86f748490"

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
