cask "dcp-o-matic-editor" do
  version "2.16.38"
  sha256 "b76c0eadfcff050c526c9a1c89085cdd536cd1ff041b3bebdb9f36d44fc88157"

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
