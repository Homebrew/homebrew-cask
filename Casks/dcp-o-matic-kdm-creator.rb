cask "dcp-o-matic-kdm-creator" do
  version "2.16.32"
  sha256 "cd82eb014d08529f47ab1809b13cbabb64f02746455d0f13d255373210031bc1"

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
