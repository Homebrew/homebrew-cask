cask "dcp-o-matic-playlist-editor" do
  version "2.16.92"
  sha256 "825db1efc155fc86855cfd6aa98dfc376aa200c55f9f520afa569dc3c153452e"

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
