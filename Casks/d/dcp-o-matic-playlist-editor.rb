cask "dcp-o-matic-playlist-editor" do
  version "2.16.93"
  sha256 "2b645556cb39960e389bebadcbb6e504f26b087bc16561cbd3de98663e9e0bc4"

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
