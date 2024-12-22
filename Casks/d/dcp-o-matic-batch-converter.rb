cask "dcp-o-matic-batch-converter" do
  version "2.18.0"
  sha256 "64799a5467e88f42d0687b5a3ce3b534a081dfacd33c6ba474ce765d05f43c4f"

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
