cask "dcp-o-matic-combiner" do
  version "2.16.88"
  sha256 "67730f54fcbe8483a29dd1946ea0e83595bbe2def01b7256c50c915f70a45587"

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
