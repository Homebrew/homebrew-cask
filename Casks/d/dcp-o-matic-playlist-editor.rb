cask "dcp-o-matic-playlist-editor" do
  version "2.16.83"
  sha256 "4024809c9f0fb3ac78ec703e21c160c42bd520d9fe034d4958553bb0441cd65c"

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
