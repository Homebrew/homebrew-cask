cask "dcp-o-matic-playlist-editor" do
  version "2.18.40"
  sha256 "0052f0669f2a6275a677c57a93cb0fe797c82be00fcaf0b002d537980487b86b"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
