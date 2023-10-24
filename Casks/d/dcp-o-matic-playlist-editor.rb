cask "dcp-o-matic-playlist-editor" do
  version "2.16.66"
  sha256 "a1c6327470f4cfad71fb898f785ed657aafc1e17c44007c36188b5d8260f1615"

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
