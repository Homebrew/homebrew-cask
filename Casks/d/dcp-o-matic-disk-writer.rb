cask "dcp-o-matic-disk-writer" do
  version "2.18.4"
  sha256 "037096954e0b97b79aa06969f27474c0db183cfb2b36fdbe9e1ea38769d08f10"

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
