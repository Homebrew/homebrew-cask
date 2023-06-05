cask "dcp-o-matic-playlist-editor" do
  version "2.16.57"
  sha256 "0b3b6ee485864272ccd88299a8424ba14637df55b44d05f2ad1d4ebee0686d19"

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
