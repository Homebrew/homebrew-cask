cask "dcp-o-matic-editor" do
  version "2.16.48"
  sha256 "f1446c4bb7fda6310e7707cea1cba833873b2efe1a2e92e16d6c69521e0011d8"

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
