cask "dcp-o-matic-editor" do
  version "2.18.20"
  sha256 "73f5e634878894db1be23cb05727ea4bec855c751bbb453959a3e96eea0d8287"

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
