cask "dcp-o-matic-playlist-editor" do
  version "2.16.17"
  sha256 "5c8970b2c1fd133ab3e0a4d561e181a744abd061919e3dbd993817be5fb3844d"

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
