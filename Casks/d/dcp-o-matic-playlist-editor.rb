cask "dcp-o-matic-playlist-editor" do
  version "2.18.11"
  sha256 "2d13c096e08c647d41497389adb0da121afdb545bc1f04e36a9a094bd9748250"

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
