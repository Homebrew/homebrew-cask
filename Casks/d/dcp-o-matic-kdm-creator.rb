cask "dcp-o-matic-kdm-creator" do
  version "2.18.14"
  sha256 "71fbd08c34cc94e1d60819997d4b7381b6cf080c1496ffb013fdfbc1069b68e2"

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
