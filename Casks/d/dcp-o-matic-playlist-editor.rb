cask "dcp-o-matic-playlist-editor" do
  version "2.16.79"
  sha256 "5f5d2b1fc79d42e0085a778d8f1fbdb33df025b9e0f879c69d11d362c32e694a"

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
