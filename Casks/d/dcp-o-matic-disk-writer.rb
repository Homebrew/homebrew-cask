cask "dcp-o-matic-disk-writer" do
  version "2.16.95"
  sha256 "1040bc895c5417413ebce3c36e88dae3741ec4cf0e545ff4f5cfa08096637a5b"

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
