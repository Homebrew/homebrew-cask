cask "dcp-o-matic-playlist-editor" do
  version "2.16.84"
  sha256 "3434d7500e2923c3c40605161ed7bc6f0ee1c03abbca07f86158491a2495fea3"

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
