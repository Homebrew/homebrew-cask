cask "dcp-o-matic-playlist-editor" do
  version "2.16.8"
  sha256 "76f168b742cde07040ebfda0ebefe52a2ae9d3f6a1bc7862a48fac588f69bcf3"

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
