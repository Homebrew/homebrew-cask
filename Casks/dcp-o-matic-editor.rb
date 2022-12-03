cask "dcp-o-matic-editor" do
  version "2.16.35"
  sha256 "14ac7b301d0408ab6510a6154a163121170ea8bc69f8bf40387bcf405ce2b84c"

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
