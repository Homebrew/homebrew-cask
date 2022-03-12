cask "dcp-o-matic-batch-converter" do
  version "2.14.57"
  sha256 "6c5c5b246c86e640f0579ad07a69b59d6d3b0aaf6cf20a2995c24fcb961a8c87"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"
end
