cask "dcp-o-matic-batch-converter" do
  version "2.16.46"
  sha256 "89daaf632e46c7de0a742619fa6a23a7424b3f063acdda5347f3294e37de2f38"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
