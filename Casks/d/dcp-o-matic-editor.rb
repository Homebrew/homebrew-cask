cask "dcp-o-matic-editor" do
  version "2.18.15"
  sha256 "1e53e09e7e8bf369bbaa1fc92eb27136a5dddda77eab2667ad3c67cdb4f581c2"

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
