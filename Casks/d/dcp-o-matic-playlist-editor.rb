cask "dcp-o-matic-playlist-editor" do
  version "2.18.15"
  sha256 "d2de9a4ec6e2c799b1ff4c5873b954c4e68877f8f00de4dbbd80400ae8dd628c"

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
