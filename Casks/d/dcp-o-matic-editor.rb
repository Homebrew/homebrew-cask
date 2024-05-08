cask "dcp-o-matic-editor" do
  version "2.16.83"
  sha256 "2704879e6efa9b962c504cca28e0bd3b0fe7cc137f397bf1e012a3cc8f6dd760"

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
