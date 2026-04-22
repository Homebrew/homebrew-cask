cask "dcp-o-matic-editor" do
  version "2.18.38"
  sha256 "da0f581ff59e5b243603f6af8f0b4cb31a6f931130e762959f82f1455d2f6477"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
