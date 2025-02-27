cask "dcp-o-matic-playlist-editor" do
  version "2.18.12"
  sha256 "7727e362ba2399a2f0d749d805f4f06f05b102c91c6a1d9e6e378a11feceeff0"

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
