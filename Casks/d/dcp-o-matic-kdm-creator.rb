cask "dcp-o-matic-kdm-creator" do
  version "2.16.94"
  sha256 "1c3134a77f93bef7e30a294ed0e75191491bfbca33f3b324d23fae486efef158"

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
