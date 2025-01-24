cask "dcp-o-matic-playlist-editor" do
  version "2.18.7"
  sha256 "af2dd9c9ae72412c08964344d3179264e8e86b11beb1f8034b71aae2619e1eb6"

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
