cask "dcp-o-matic-batch-converter" do
  version "2.18.41"
  sha256 "d262e5f621251347c1c792e78d189ee585ae58ed22bbf6412c61b452d8bee5e9"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
