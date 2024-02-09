cask "dcp-o-matic-editor" do
  version "2.16.75"
  sha256 "5ef69bb29e914833acf91043b1ff5b2d1a1bb2ee3915b5bae82fd6138ad628f7"

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
