cask "dcp-o-matic-playlist-editor" do
  version "2.16.91"
  sha256 "6efaae70cad3f286f4754ec5c9f5d5a00005d380adee4d3214dd16550758b2e5"

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
