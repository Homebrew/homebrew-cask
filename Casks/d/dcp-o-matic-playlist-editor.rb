cask "dcp-o-matic-playlist-editor" do
  version "2.16.85"
  sha256 "a5c0ef8c92622654a373f99907f4388dd24cd5aedc9037487806ec5af91fd9de"

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
