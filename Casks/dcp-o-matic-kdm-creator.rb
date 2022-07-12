cask "dcp-o-matic-kdm-creator" do
  version "2.16.17"
  sha256 "c69ab57ae81cf71bc234416f80e018886f12f2357252bad1a150b3337ecbcc42"

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
