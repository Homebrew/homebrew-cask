cask "dcp-o-matic-editor" do
  version "2.16.85"
  sha256 "4aedee5f7d791150e6bf1958deab02d03ed7f8fdab26aab11def9d87c6cfc725"

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
