cask "dcp-o-matic-playlist-editor" do
  version "2.16.24"
  sha256 "d31c2c7d79cf177b7ebb3f9a18833d8963a7d571e9fd954ed97de678cef7f758"

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
