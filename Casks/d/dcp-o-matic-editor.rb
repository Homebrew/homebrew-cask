cask "dcp-o-matic-editor" do
  version "2.16.79"
  sha256 "709ea55cd912d12d3d8ed00c29620571d6611ad2f7797ad4ed8fe78e00ffc7b5"

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
