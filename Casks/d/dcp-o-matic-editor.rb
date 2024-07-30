cask "dcp-o-matic-editor" do
  version "2.16.90"
  sha256 "57cdabaac5272126041eb9cc3d7b624867f894bad11460cac9d7ba7a1942e066"

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
