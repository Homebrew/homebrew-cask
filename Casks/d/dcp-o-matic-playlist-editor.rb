cask "dcp-o-matic-playlist-editor" do
  version "2.16.75"
  sha256 "6646e82efce84d9932726d7de95ac5d78920a2dcaf231045e8c5bff59c2c789f"

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
