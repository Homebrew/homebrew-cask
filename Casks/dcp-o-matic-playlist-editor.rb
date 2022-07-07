cask "dcp-o-matic-playlist-editor" do
  version "2.16.16"
  sha256 "480fef6016573930e79c366bb498981070bf9c9f40bd6fe2b68b3ceefcfe5736"

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
