cask "dcp-o-matic-playlist-editor" do
  version "2.16.80"
  sha256 "023cc18f09dcfcdb21dc6b3ef7a8d509f7cc62c4a7a9c7f864de0955a8186a7f"

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
