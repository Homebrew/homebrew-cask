cask "dcp-o-matic-batch-converter" do
  version "2.16.84"
  sha256 "b4c2c7db194707af8eb2cbf2e562ba5035a19cf61c0db747ecdece460a6198d6"

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
