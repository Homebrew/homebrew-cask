cask "dcp-o-matic-playlist-editor" do
  version "2.16.55"
  sha256 "db753aa0ee5975ad8e7881e55751be450382fed83e7739f2aeffe92ea3f82c38"

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
