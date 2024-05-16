cask "dcp-o-matic-kdm-creator" do
  version "2.16.84"
  sha256 "771fe6a419a80bc95e4aa0df9359bc0294a8b724b3c6ce728092819dba623194"

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
