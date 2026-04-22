cask "dcp-o-matic-batch-converter" do
  version "2.18.38"
  sha256 "19e0a20200d1d886bcd170c6f340da37358c43f1b1b75eb9f17be2a8387053b7"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
