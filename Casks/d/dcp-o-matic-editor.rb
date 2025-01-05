cask "dcp-o-matic-editor" do
  version "2.18.2"
  sha256 "8981dce7d8d82a237c9fcecd03625616256bd8079f6e377264567b3ab1fe5e9e"

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
