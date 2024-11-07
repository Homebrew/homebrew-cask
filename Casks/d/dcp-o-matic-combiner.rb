cask "dcp-o-matic-combiner" do
  version "2.16.96"
  sha256 "937d2cfed917d324fc5a1943f94dec69df815fc1f4fa8787e28235a3fad8b4d2"

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
