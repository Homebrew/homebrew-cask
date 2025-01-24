cask "dcp-o-matic-disk-writer" do
  version "2.18.7"
  sha256 "546ff00e69fbd926a4e8afb5eab051ca84f2eb2206153d14820d5e1c4e2335ff"

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
