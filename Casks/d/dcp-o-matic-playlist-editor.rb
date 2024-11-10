cask "dcp-o-matic-playlist-editor" do
  version "2.16.97"
  sha256 "d9071e3dd22eef6397f7f1cf63062fc7c7e03bab3481637b700bbda7711df0d0"

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
