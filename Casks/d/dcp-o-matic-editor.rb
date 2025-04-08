cask "dcp-o-matic-editor" do
  version "2.18.16"
  sha256 "3730f958c1d71f5431337a542c8993f5e1e7017d7be6b7a138aa0fbaaa8ed8f5"

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
