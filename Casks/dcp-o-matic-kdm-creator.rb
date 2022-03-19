cask "dcp-o-matic-kdm-creator" do
  version "2.14.57"
  sha256 "53bc92baf89604a1f06b29a50ccc8a98f893c7409108258caa9b4b3ab71cc5a4"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
