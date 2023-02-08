cask "dcp-o-matic-combiner" do
  version "2.16.41"
  sha256 "bbc087c265d4ddaa85b78b7ba2fc0853bde3a8770deb1622e5a0a8ef2c9cc50f"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-combiner&version=#{version}"
  name "dcp-o-matic-combiner"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Combiner.app"

  # No zap stanza required
end
