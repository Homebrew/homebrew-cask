cask "dcp-o-matic-kdm-creator" do
  version "2.16.22"
  sha256 "c1be9d61ca902fb66ac03fd6d059e8550d9b7762652e9b143a45c647b2e3ade5"

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
