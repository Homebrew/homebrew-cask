cask "dcp-o-matic-disk-writer" do
  version "2.18.44"
  sha256 "48e2bb608cade7bccf2973e398df769ebbd2bccf0989453d3a36522aa4b9f1de"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
