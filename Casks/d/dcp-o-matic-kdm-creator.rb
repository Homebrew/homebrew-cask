cask "dcp-o-matic-kdm-creator" do
  version "2.18.20"
  sha256 "c9eeeb6d265e64633b10a4da035cb6939fe492aa7ceaabde8f6728595891e26c"

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
