cask "dcp-o-matic-disk-writer" do
  version "2.18.19"
  sha256 "21d31e4e7a4b25f9c1e60051844664bf086b5d365befb47d447cd5bbd430b0e0"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
