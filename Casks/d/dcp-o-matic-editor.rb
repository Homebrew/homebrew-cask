cask "dcp-o-matic-editor" do
  version "2.18.4"
  sha256 "bf508b30fa18d84dcdd28fc5f347e6900c1fa6674eae810a220ac12a55053c41"

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
