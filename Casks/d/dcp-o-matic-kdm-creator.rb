cask "dcp-o-matic-kdm-creator" do
  version "2.16.79"
  sha256 "eab51f46d3e66e3d79109e43c95b639fe38038e5d9c15f4e4093676497c2e37b"

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
