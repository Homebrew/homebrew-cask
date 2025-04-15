cask "dcp-o-matic-disk-writer" do
  version "2.18.17"
  sha256 "63adad809f7100ac16fbef4c4f09956e9f6bac67096061a2bd9798226d777b6d"

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
