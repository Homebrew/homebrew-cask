cask "dcp-o-matic-editor" do
  version "2.16.44"
  sha256 "da107da2774b0952e888a6990af88f212e8b73a7d445a8d7b9757bb25f4c3d54"

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
