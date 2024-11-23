cask "dcp-o-matic-kdm-creator" do
  version "2.16.98"
  sha256 "14c42eb4636b66fa9bd201363adcc6a133159da06cdaa0e0414c9a028e765970"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
