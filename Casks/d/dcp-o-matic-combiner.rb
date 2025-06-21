cask "dcp-o-matic-combiner" do
  version "2.18.20"
  sha256 "76948380ec2d85d48ffe699b93016fa3f61367a1bec7cbc333a6a2309162bcdb"

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
