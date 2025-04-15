cask "dcp-o-matic-playlist-editor" do
  version "2.18.17"
  sha256 "e359ebd9c9b90b9ca2060302b502b3fe46511be492dc7e86c5351a1caf843a76"

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
