cask "dcp-o-matic-playlist-editor" do
  version "2.18.0"
  sha256 "58fbf495dbfed1b76f4473351f753a7f8da9850ed7016724eaca71b0dc879642"

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
