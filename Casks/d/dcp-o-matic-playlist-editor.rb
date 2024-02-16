cask "dcp-o-matic-playlist-editor" do
  version "2.16.76"
  sha256 "892c18aa2f1a199b56ee120a627f2a4038d0a7c752734f7d0c33179f6442d9ff"

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
