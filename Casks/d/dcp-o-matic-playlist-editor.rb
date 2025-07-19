cask "dcp-o-matic-playlist-editor" do
  version "2.18.21"
  sha256 "e53fd0c816216ff716821e080c5b93aaf626f5eb8abe86d1279e9d2198732114"

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
