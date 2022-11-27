cask "dcp-o-matic-editor" do
  version "2.16.34"
  sha256 "d19e3192474b81204dee11c78d6927cebeb1740232e119468a4bfd79fb7e1f10"

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
