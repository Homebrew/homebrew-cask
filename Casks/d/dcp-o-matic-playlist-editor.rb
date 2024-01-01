cask "dcp-o-matic-playlist-editor" do
  version "2.16.71"
  sha256 "01bb517fdb2aeb78a383293c581cb5e52a3620fb3fc22b2a6b83a223720412bb"

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
