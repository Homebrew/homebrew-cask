cask "dcp-o-matic-disk-writer" do
  version "2.18.15"
  sha256 "ef375bec8e54abb0d548c1deb339a48a81b818fa29b3c97f85981847b0636d68"

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
