cask "dcp-o-matic-kdm-creator" do
  version "2.16.40"
  sha256 "d914fdea5b0d660710ae9c341392c5b496c4a6a23146a76c2add82c01e41feae"

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
