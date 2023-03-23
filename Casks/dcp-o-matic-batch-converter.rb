cask "dcp-o-matic-batch-converter" do
  version "2.16.48"
  sha256 "33280f4d7498f1cb064bb8943d334a62889bfee3f13768c7af792edede0f24a5"

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
