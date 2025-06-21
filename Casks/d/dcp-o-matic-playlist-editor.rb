cask "dcp-o-matic-playlist-editor" do
  version "2.18.20"
  sha256 "07df78e9a41e8daeaace45504ee61eaca62815eca8677d1b71d0452788afec27"

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
