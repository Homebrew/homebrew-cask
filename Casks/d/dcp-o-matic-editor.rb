cask "dcp-o-matic-editor" do
  version "2.16.65"
  sha256 "3e6edacdbb39417b9ebd3b44f5a56179c5698e2400a5aacf9547a531dca690bd"

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
