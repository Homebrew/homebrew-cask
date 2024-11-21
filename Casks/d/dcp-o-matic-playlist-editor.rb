cask "dcp-o-matic-playlist-editor" do
  version "2.16.98"
  sha256 "6b00b81ae01be8be52733786fa0b20939539bd40194561b8232a0383264eabf3"

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
