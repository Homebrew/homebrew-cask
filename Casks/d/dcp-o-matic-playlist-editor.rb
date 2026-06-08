cask "dcp-o-matic-playlist-editor" do
  version "2.18.43"
  sha256 "c116e108ce6b8010f4d4ee11f1e643558e8552bd58c55485925c882113404749"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
