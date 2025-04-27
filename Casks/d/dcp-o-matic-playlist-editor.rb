cask "dcp-o-matic-playlist-editor" do
  version "2.18.18"
  sha256 "4902c075849349304f010f2b49861225b0ad25a8ec4486f4200b26bcde434e2e"

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
