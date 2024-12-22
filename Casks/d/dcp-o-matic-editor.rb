cask "dcp-o-matic-editor" do
  version "2.18.0"
  sha256 "eb6f5be7603ed1013bd1b19eb6285c524a74b099523d04a9a52d736ebaabcf54"

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
