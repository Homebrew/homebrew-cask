cask "dcp-o-matic-combiner" do
  version "2.18.10"
  sha256 "1d055a6f8a9d51aa4440fabb5f4bc66b4059ccb7b9f3d7ce7d192a558cc29d1f"

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
