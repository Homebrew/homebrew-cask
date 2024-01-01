cask "dcp-o-matic-editor" do
  version "2.16.71"
  sha256 "5bf632b2c75cbdd3453780f4807ace1ed7e934c8338eb4926cccb2f877eaa37a"

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
