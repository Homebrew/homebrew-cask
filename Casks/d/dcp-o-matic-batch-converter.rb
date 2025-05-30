cask "dcp-o-matic-batch-converter" do
  version "2.18.19"
  sha256 "3dd03cab55627859db18ba21a76e72f9e123759ad03f484dff21ea548271ef30"

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
