cask "dcp-o-matic-batch-converter" do
  version "2.16.47"
  sha256 "d9c8e0c95e6adb3463c2e668449b0dc8a979e86da4baa6e66a4e4df7550358d3"

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
