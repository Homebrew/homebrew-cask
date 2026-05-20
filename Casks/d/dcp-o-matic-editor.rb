cask "dcp-o-matic-editor" do
  version "2.18.41"
  sha256 "273108b7936562cf752110aa99401504cde991a917bf4210e2a66ea18e4f7e5c"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
