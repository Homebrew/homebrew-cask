cask "dcp-o-matic-kdm-creator" do
  version "2.16.5"
  sha256 "8d41f8080555e7cde17f8e37291c7fdd1567309892178af865a79dce11131b85"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
