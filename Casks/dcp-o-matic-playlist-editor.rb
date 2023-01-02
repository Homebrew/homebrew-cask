cask "dcp-o-matic-playlist-editor" do
  version "2.16.38"
  sha256 "43dca1204925f9f896a44a8f1e2a480eb74898948ebccdcfa88e2de8d53983e6"

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
