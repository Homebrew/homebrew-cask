cask "dcp-o-matic-editor" do
  version "2.16.94"
  sha256 "4b2f658e512fea4a5240b53e3fc65cc5dc43e3c6c49097dbfe59ac74b409fcf0"

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
