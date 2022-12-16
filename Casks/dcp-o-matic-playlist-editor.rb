cask "dcp-o-matic-playlist-editor" do
  version "2.16.35"
  sha256 "c24016a66756ffa59b5ea3aba00bf5e18ce0b9f2c2cacd57e48701864d49b4e6"

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
