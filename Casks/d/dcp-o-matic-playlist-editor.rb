cask "dcp-o-matic-playlist-editor" do
  version "2.16.95"
  sha256 "a2768a1f0c4f0e3ddeb425be85e51fc5250dc868b0af94a2c472143f33dacb3d"

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
