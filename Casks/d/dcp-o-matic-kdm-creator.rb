cask "dcp-o-matic-kdm-creator" do
  version "2.16.89"
  sha256 "eec8dabcc892b4468d10ce0062216bdafbfae4bae8ac689250a6f6ca412b2b67"

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
