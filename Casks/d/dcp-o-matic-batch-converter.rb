cask "dcp-o-matic-batch-converter" do
  version "2.16.91"
  sha256 "dfc35a4094a66655e73a376ed917fcdc01a67424247715b66a4acbce67fd6295"

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
