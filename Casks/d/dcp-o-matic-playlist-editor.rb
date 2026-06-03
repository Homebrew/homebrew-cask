cask "dcp-o-matic-playlist-editor" do
  version "2.18.42"
  sha256 "6f269e882a69d15216204f3995267b467c2118b429162dddd8105b924a5e09ee"

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
