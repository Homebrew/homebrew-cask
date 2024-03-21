cask "dcp-o-matic-combiner" do
  version "2.16.79"
  sha256 "f207a1ec4f9d339f1b9631323111db8379a9983e3a047d96c0c90147b3e93f1f"

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
