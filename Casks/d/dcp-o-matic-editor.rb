cask "dcp-o-matic-editor" do
  version "2.16.91"
  sha256 "e149259db4c82a9d8a80c1e9ea0649d516b56eccfd52dd4338caa9f2a9eaeb16"

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
