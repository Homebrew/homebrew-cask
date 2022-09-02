cask "dcp-o-matic-disk-writer" do
  version "2.16.22"
  sha256 "dcce7786284c9857689dbeb349ec9e968e2732ae93df8fcfeef1a07e5dd4b860"

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
