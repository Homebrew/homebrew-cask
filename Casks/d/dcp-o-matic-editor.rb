cask "dcp-o-matic-editor" do
  version "2.16.98"
  sha256 "f88b0c244bf701c894aed696d52928a58fdee81fd095b0a43ae4661429a6bbfe"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
