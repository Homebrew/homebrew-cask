cask "dcp-o-matic-batch-converter" do
  version "2.18.6"
  sha256 "a06db50392e6d18eb419dfc1aef7760ab1104d0019bb277200cf8fc78a185e65"

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
