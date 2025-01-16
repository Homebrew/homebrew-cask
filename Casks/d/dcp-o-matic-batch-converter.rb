cask "dcp-o-matic-batch-converter" do
  version "2.18.5"
  sha256 "24944624a93884d2a36608aaf0bac17cab21335c38b0d5b6e9051a007ed54b0f"

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
