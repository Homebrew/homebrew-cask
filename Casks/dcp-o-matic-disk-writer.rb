cask "dcp-o-matic-disk-writer" do
  version "2.16.34"
  sha256 "b1e711fb795f5eca2da1c2b52e2c0f3039fa9757fcadc5aba96c6b077cf638e5"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
