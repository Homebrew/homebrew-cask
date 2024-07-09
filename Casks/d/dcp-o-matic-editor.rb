cask "dcp-o-matic-editor" do
  version "2.16.88"
  sha256 "e90f87f375f43b444ccc3b56bce81450cd9c84180caab3b54253c01fe0106ccf"

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
