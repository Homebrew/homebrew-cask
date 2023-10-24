cask "dcp-o-matic-editor" do
  version "2.16.66"
  sha256 "0f000680cb0ee67a0ab3530342863ff964a1ecb06e46487597baec849509dbb5"

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
