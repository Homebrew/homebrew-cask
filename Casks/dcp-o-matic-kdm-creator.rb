cask "dcp-o-matic-kdm-creator" do
  version "2.16.31"
  sha256 "5fc4bd199e17b7c59385bea2c3d3c2045b8150a75fdf65a39da734d63354f96b"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
