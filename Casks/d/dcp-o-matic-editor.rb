cask "dcp-o-matic-editor" do
  version "2.16.72"
  sha256 "8d39062e46107a7b6c2585b6eb5088c30af86fd4addf85a5b0e0e5ab4a05f69f"

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
