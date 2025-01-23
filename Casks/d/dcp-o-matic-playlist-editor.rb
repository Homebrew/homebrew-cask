cask "dcp-o-matic-playlist-editor" do
  version "2.18.6"
  sha256 "5c4132fecf2395e3a8abbebd5cc4180a5f9bff20d9c18e785648afe97c0c767b"

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
