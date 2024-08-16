cask "dcp-o-matic-kdm-creator" do
  version "2.16.91"
  sha256 "2baf6c8f0031b3d46bcccceab011aaabe95e647e88fe5a50527efed91fa3ed47"

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
