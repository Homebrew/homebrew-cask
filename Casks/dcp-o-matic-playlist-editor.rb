cask "dcp-o-matic-playlist-editor" do
  version "2.16.22"
  sha256 "b4a137ab9b75f1f0bc8979fe997925be2f6f782ddea79a0c8f5d27a871a519ce"

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
