cask "dcp-o-matic-playlist-editor" do
  version "2.18.19"
  sha256 "dff0b6bba8d62256c06681d878bfd3c9c6ed4308a07175f5826348e9c70a3e85"

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
