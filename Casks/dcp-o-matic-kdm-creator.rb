cask "dcp-o-matic-kdm-creator" do
  version "2.16.28"
  sha256 "00b336309f5f0f2cef3f353327e8167b54d27f4770b9bcbb847c4da3541150f2"

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
