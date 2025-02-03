cask "dcp-o-matic-editor" do
  version "2.18.10"
  sha256 "acfa2b4b9684430078768692e6b9d865a2a7475978d47a842ae7b8f1da1c29fa"

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
