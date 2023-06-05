cask "dcp-o-matic-playlist-editor" do
  version "2.16.58"
  sha256 "2e5bb82418356076fa38a526185db37787677b652a227581339fa848e7e7c4e9"

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
