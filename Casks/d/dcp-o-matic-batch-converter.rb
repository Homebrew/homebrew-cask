cask "dcp-o-matic-batch-converter" do
  version "2.16.92"
  sha256 "0ebd99fb04172b801e75694c5a313882a020034536eab29d5aef4943bd15575c"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
