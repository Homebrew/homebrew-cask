cask "dcp-o-matic-playlist-editor" do
  version "2.16.26"
  sha256 "8a2eff365aa485345e0df6601b178bf7cdb3edb37a37c7898bef13245a45dfd0"

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
