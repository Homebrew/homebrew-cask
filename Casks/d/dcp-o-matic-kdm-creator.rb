cask "dcp-o-matic-kdm-creator" do
  version "2.18.6"
  sha256 "24a2eb3c8698e646f20f3854d139a8df4a1115ba3cbba5234edbb341a95e34c5"

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
