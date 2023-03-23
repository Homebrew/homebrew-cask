cask "dcp-o-matic-playlist-editor" do
  version "2.16.48"
  sha256 "5c793493714a0682caaf9054aa6c0634530f148376dd6f8c9230981e3d97c0e2"

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
