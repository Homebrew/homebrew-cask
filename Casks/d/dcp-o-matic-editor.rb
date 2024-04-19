cask "dcp-o-matic-editor" do
  version "2.16.80"
  sha256 "d4dab9c49fc9eb9aa386a8a50995f52a078fa5baec078191fb784fcc3debaa93"

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
