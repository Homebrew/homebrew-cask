cask "dcp-o-matic-batch-converter" do
  version "2.16.13"
  sha256 "30973d334140136697ae2d91b79b5f0b4940fb80aaa33be72afd22df2616bd85"

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
