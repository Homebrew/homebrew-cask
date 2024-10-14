cask "dcp-o-matic-editor" do
  version "2.16.95"
  sha256 "c4f2614a38d2f5f21487dfc418632c61187bfb31a073437b44b14e55204501c8"

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
