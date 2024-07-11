cask "dcp-o-matic-editor" do
  version "2.16.89"
  sha256 "b67ca047fa7b7c1833845fc2325291363025398673a3f4219a7b6634d0df9aee"

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
