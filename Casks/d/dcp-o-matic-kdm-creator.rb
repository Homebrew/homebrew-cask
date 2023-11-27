cask "dcp-o-matic-kdm-creator" do
  version "2.16.69"
  sha256 "f49a5c863f119f73ce21f37da5024d03d4fce7fc01349af35a25bbd721a2f5ce"

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
