cask "dcp-o-matic-playlist-editor" do
  version "2.18.41"
  sha256 "f053c440b4b3beb95c2d55ab40ab42f757917d861f01ca799444101430ffcae1"

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
