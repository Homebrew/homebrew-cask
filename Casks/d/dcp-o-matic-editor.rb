cask "dcp-o-matic-editor" do
  version "2.16.62"
  sha256 "ce73d66014c359c1985602a697d589fb09b47eeb43aeffe008b39537fd4ea85c"

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
