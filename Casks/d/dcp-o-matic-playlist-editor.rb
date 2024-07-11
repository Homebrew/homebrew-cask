cask "dcp-o-matic-playlist-editor" do
  version "2.16.89"
  sha256 "d4a80c6f4bddb5050ec4502d61e6376363679c5ebc284108ed7672ff804d82d9"

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
