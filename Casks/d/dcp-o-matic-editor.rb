cask "dcp-o-matic-editor" do
  version "2.16.74"
  sha256 "ef8d2e021c6962194ff67f239f23c82ac9254c040f6ce7b52e90ccc634fba907"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
