cask "dcp-o-matic-disk-writer" do
  version "2.16.69"
  sha256 "fa313f4d7f708a23834a76da205fe541e4d43a1807b5614b287112ec39be2a0a"

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
