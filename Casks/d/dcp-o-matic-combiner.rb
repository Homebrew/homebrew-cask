cask "dcp-o-matic-combiner" do
  version "2.18.19"
  sha256 "69fa160ffc48e70331ac6876586f02e34abb5d37fe63dd296470c761ca8a74b8"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
