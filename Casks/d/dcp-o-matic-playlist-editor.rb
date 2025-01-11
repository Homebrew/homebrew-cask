cask "dcp-o-matic-playlist-editor" do
  version "2.18.3"
  sha256 "680172c3537f3421ffffeaf1609d8797a5fcb2c40de2ce460739c8d632f9e553"

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
