cask "dcp-o-matic-playlist-editor" do
  version "2.16.59"
  sha256 "7efe226641f9e540c77cbed3838f085d59c6c18c8a152e1544cb7f0ba8b758af"

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
