cask "dcp-o-matic-playlist-editor" do
  version "2.16.68"
  sha256 "fb9e99e71bb5ac47cf3716fa3ad0cac7c2c121a6c02a9e80f76a3a1d63e19dca"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
