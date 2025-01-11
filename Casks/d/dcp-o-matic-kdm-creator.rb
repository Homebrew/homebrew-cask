cask "dcp-o-matic-kdm-creator" do
  version "2.18.3"
  sha256 "ed1ed2f1a32455e9cba0bef9613016dd28d4c9ee51ede72da3c577f295c77895"

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
