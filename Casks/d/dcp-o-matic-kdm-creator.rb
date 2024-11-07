cask "dcp-o-matic-kdm-creator" do
  version "2.16.96"
  sha256 "129cc5c187af85e34703aa283aa95524019f34b4a7ab94817906c9e6b56cb34a"

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
