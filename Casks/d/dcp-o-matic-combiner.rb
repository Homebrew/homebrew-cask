cask "dcp-o-matic-combiner" do
  version "2.18.39"
  sha256 "c6ff51ef1e22a4adf0496319b57f0684426751473105b09d87698b5f3ac163c5"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "DCP-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
