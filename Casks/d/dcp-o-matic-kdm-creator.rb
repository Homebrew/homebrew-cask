cask "dcp-o-matic-kdm-creator" do
  version "2.18.10"
  sha256 "c22b3478dde6bd111c3c3492505a3bea0473f17f8d7e20acf19661982552cf12"

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
