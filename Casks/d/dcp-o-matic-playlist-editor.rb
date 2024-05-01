cask "dcp-o-matic-playlist-editor" do
  version "2.16.82"
  sha256 "8c1a2eafd99fecbc881a792230a44d8da1a206ea0f941225aacbc65565fce0f7"

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
