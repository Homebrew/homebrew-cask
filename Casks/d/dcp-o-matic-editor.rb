cask "dcp-o-matic-editor" do
  version "2.16.69"
  sha256 "e8e237bd92978d62156d0d6190232d7ac1c40745b20104b28f5d277f44f854cf"

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
