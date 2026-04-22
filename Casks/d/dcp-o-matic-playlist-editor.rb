cask "dcp-o-matic-playlist-editor" do
  version "2.18.38"
  sha256 "f49d493dedfc18938141e95f4ea7e95bebf4d04ca88dfbcd5064afccf5899006"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
