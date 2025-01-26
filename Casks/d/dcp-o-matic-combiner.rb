cask "dcp-o-matic-combiner" do
  version "2.18.9"
  sha256 "fa33cff94060ee1ef46e0e97cc87287e7fd80fb8c0f0c1481506788a510521f5"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
