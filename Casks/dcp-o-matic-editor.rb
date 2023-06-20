cask "dcp-o-matic-editor" do
  version "2.16.59"
  sha256 "eabf1d6989203c036474daab1a3a677889445aa8d9715d28fd1be73203acfbf1"

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
