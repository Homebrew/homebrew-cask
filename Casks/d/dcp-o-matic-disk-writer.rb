cask "dcp-o-matic-disk-writer" do
  version "2.16.62"
  sha256 "9e11d968c0b194932ac25385fdc0048c269d1936e6fda7fec0098de513f0a41b"

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
