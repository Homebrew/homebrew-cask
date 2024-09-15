cask "dcp-o-matic-editor" do
  version "2.16.92"
  sha256 "ac933732e493f13adae78f1c85227039b9e3fced46c83b50098ade5bf0cc172e"

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
