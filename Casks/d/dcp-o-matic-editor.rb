cask "dcp-o-matic-editor" do
  version "2.18.14"
  sha256 "2f86f7121472b72889ecce97e3b37a99eeecd60498427f3a4c2d30e33a106dd3"

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
