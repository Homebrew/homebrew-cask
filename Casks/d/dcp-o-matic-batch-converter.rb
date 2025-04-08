cask "dcp-o-matic-batch-converter" do
  version "2.18.16"
  sha256 "9cbcb3ab709b34519b6782d95cc1f77dd41f5b96e0b0bdcab6306f7f54c45eb5"

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
