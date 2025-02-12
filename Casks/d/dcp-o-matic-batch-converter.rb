cask "dcp-o-matic-batch-converter" do
  version "2.18.11"
  sha256 "5ca657153d0095a7cb9bb2ed1941fe1dc95e7010fbe6a8dd79c7c9dcb31e646e"

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
