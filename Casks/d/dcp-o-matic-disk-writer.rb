cask "dcp-o-matic-disk-writer" do
  version "2.18.9"
  sha256 "0cfa863c2b2d486d51214e9717dfdd3988bc0238316d502528a49e564bbb6515"

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
