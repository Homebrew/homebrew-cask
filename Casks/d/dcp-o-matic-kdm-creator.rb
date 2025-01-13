cask "dcp-o-matic-kdm-creator" do
  version "2.18.4"
  sha256 "efd48eccd010e4ea19e54c651033fc693ac6a8904f7cc24d7363294e63fa4141"

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
