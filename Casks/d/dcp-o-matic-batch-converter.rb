cask "dcp-o-matic-batch-converter" do
  version "2.16.96"
  sha256 "ceb78c5687b8d6663078dd93a48a8fbba9f999f98df2149d4ac56124d96dc52a"

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
