cask "dcp-o-matic-combiner" do
  version "2.18.41"
  sha256 "4a949b559ece1cda98ddee1b400a88e8e562f3b1b5fabd12e251633ff866dfd9"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
