cask "dcp-o-matic-combiner" do
  version "2.18.14"
  sha256 "59b2b41e0196c55f2ecdcde05492c05ac10e4c033d7af6818da08333e01230c4"

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
