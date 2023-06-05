cask "dcp-o-matic-editor" do
  version "2.16.57"
  sha256 "72ff3eff0efd8345e990ce794960362b1a2dffe17291d0a8ad672ab3333c202a"

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
