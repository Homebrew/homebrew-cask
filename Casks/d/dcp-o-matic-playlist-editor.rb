cask "dcp-o-matic-playlist-editor" do
  version "2.16.72"
  sha256 "4b9e23f799e5b3259a615da750aa1bf316d9bf48788935ba3bf52eb8b83a48c2"

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
