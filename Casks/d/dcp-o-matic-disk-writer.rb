cask "dcp-o-matic-disk-writer" do
  version "2.16.90"
  sha256 "8183ae25c9cd35be04345e9e8e041ed3c41b8a373f4c7f869574d3a3066fd168"

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
