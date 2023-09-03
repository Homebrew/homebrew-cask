cask "dcp-o-matic-kdm-creator" do
  version "2.16.63"
  sha256 "882648bf01c159d7f09a85ae59eef6a0337664bbdb4bb3ba2daca170adaeb57a"

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
