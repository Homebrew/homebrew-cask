cask "dcp-o-matic-playlist-editor" do
  version "2.16.87"
  sha256 "6a8f26a938c88666155236bb41d661c9027aa600fc4be7298ec5f8d5bd686e0e"

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
