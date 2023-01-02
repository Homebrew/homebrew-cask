cask "dcp-o-matic-kdm-creator" do
  version "2.16.38"
  sha256 "2d8effd215ef354ff75454ce66eb7135da929f82f02198753add8f6fc01c4781"

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
