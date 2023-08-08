cask "dcp-o-matic-editor" do
  version "2.16.60"
  sha256 "4571bb67380c18af56c0a6152e778b589326dca1e3e356e03f4a72edfcbe5ec2"

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
