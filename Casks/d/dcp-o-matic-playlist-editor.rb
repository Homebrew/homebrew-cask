cask "dcp-o-matic-playlist-editor" do
  version "2.18.13"
  sha256 "dd4644a43c00d50430040ce6277bd0ac8afe9035a04f4ae9f5d51c9bb9ea2e37"

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
