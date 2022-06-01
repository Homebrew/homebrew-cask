cask "dcp-o-matic-playlist-editor" do
  version "2.16.13"
  sha256 "10993aa277d268660a156e4e9f2490ed067ae42dd9c854033484bbb12a3c9d02"

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
