cask "dcp-o-matic-batch-converter" do
  version "2.18.39"
  sha256 "c2bced3783d8ab2ac82f2a0f4a31d003deee59a3fc826efa9511239a062cd926"

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
