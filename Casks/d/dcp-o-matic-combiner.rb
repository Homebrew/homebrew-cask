cask "dcp-o-matic-combiner" do
  version "2.18.44"
  sha256 "93cd376e2eba36d702bb9d9436019f7e4414ea6f82e6e87463a90dfaa96bd269"

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
