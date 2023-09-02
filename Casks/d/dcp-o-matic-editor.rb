cask "dcp-o-matic-editor" do
  version "2.16.63"
  sha256 "f184661041ad7c75ee10e95e924bc16df2eb63c6cd3ae2a3721580b92b07afda"

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
