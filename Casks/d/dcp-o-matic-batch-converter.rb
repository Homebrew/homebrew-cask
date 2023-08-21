cask "dcp-o-matic-batch-converter" do
  version "2.16.62"
  sha256 "837709e9b87d61f47f7669da9bcef40438f799d2dd2616e537ab614cb5366523"

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
