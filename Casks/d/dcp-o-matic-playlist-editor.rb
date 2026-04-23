cask "dcp-o-matic-playlist-editor" do
  version "2.18.39"
  sha256 "46fae6d093e2997e69386ae0671ce20f1cd96510e4220b024e1aaf3c21ba85ba"

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
