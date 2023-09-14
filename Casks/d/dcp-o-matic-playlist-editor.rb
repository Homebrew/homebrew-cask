cask "dcp-o-matic-playlist-editor" do
  version "2.16.64"
  sha256 "1ddedf083ea02a2387eb7b7aafa0da093da2b7a0d416aadd00d6ca0be1b8f162"

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
