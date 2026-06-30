cask "dcp-o-matic-playlist-editor" do
  version "2.18.44"
  sha256 "6064f395bf624d3098fd9619e65b364d3665e6db726778676ff2b7eba1b745ee"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
