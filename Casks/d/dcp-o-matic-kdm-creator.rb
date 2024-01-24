cask "dcp-o-matic-kdm-creator" do
  version "2.16.72"
  sha256 "187500cdf0d9a9e4400d016bf3c96f438751e26a4a1b044aab6e1d2eefcc5039"

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
